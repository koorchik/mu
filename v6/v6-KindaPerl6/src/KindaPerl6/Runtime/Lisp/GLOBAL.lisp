(in-package #:kp6-lisp)

(defvar *kp6-global-functions* (list))

(defgeneric kp6-initialize-interpreter (interpreter &key &allow-other-keys)
  (:method ((interpreter kp6-interpreter) &key)
    (let ((global (kp6-find-package interpreter "GLOBAL")))
      (dolist (function *kp6-global-functions*)
        (kp6-store global (car function) (make-kp6-cell (cdr function)))))))

(macrolet ((define-kp6-function (name-and-options params &body body)
             "Define a new function in Perl 6 land, within the given package.
RETURNS may be specified to unconditionally return a value \(it will
be passed through CL->PERL first; for example, :RETURNS 'TRUE will
result in \(MAKE-INSTANCE 'KP6-BIT :VALUE 1\)\)."
             (destructuring-bind (name &key instance returns (interpreter (gensym))) (if (listp name-and-options) name-and-options (list name-and-options))
               (let ((declaration (list))
                     (body (copy-list body)))
                 (when (eql (caar body) 'declare)
                   (setf declaration (car body))
                   (setf body (remove declaration body)))
                 `(push
                   (cons
                    ',(kp6-normalize-function-name name)
                    (make-kp6-sub
                        ((make-instance
                          'kp6-signature
                          :positional (list
                                       ,@(mapcar
                                          #'(lambda (param)
                                              `(make-instance 'kp6-named-parameter
                                                              :name (kp6-generate-variable
                                                                     ,(symbol-name (first param))
								     ,(symbol-name (second param)))))
                                          (remove-if #'(lambda (x) (eql (car x) '@@)) params)))
                          ,@(let ((slurpy-array (find '@@ params :key #'car)))
                                 (when slurpy-array
                                   `(:slurpy-array (make-instance 'kp6-named-parameter :name (cons '@ ,(symbol-name (second slurpy-array))))))))
                         :interpreter ,interpreter)
                      ,@(if instance
                            `((make-instance ,instance :value (progn ,@body)))
                            body)
                      ,@(when (defined returns) (list `(cl->perl ,returns)))))
                   *kp6-global-functions*))))
           (VAR (sigil name)
             `(lookup-lexical-variable (cons ',sigil ,(symbol-name name)))))

  (flet ((call-kp6-function (interpreter name &key positional named block)
           (declare (ignore block named))
           (kp6-apply-function interpreter
                               (kp6-normalize-function-name name)
                               (append
                                (mapcar #'make-kp6-positional-parameter
					(mapcar #'make-kp6-cell positional)))))
         (str* (object) (kp6-dispatch (kp6-dispatch object nil :Str) nil :cl-landish))
         (num* (object) (kp6-dispatch (kp6-dispatch object nil :Num) nil :cl-landish)))
    (declare (ignorable #'call-kp6-function #'str* #'num*))

    (define-kp6-function ("infix:<eq>" :instance 'kp6-Bit) (($ first) ($ second))
      (string= (str* (VAR $ first)) (str* (VAR $ second))))

    (define-kp6-function ("infix:<ne>" :instance 'kp6-Bit) (($ first) ($ second))
      (not (string= (str* (VAR $ first)) (str* (VAR $ second)))))

    (define-kp6-function ("infix:<==>" :instance 'kp6-Bit) (($ first) ($ second))
      (equal (num* (VAR $ first)) (num* (VAR $ second))))

    (define-kp6-function ("infix:<!=>" :instance 'kp6-Bit) (($ first) ($ second))
      (not (equal (num* (VAR $ first)) (num* (VAR $ second)))))

    (define-kp6-function ("infix:<<>" :instance 'kp6-Bit) (($ first) ($ second))
      (< (num* (VAR $ first)) (num* (VAR $ second))))

    (define-kp6-function ("infix:<>>" :instance 'kp6-Bit) (($ first) ($ second))
      (> (num* (VAR $ first)) (num* (VAR $ second))))

    (define-kp6-function ("infix:<<=>" :instance 'kp6-Bit) (($ first) ($ second))
      (<= (num* (VAR $ first)) (num* (VAR $ second))))

    (define-kp6-function ("infix:<>=>" :instance 'kp6-Bit) (($ first) ($ second))
      (>= (num* (VAR $ first)) (num* (VAR $ second))))

    (define-kp6-function "infix:<<=>>" (($ first) ($ second))
      (signum (- (num* (VAR $ first)) (num* (VAR $ second)))))

    (define-kp6-function "infix:<+>" (($ first) ($ second))
      (cl->perl (+ (num* (VAR $ first)) (num* (VAR $ second)))))

    (define-kp6-function "infix:<->" (($ first) ($ second))
      (cl->perl (- (num* (VAR $ first)) (num* (VAR $ second)))))

    (define-kp6-function "infix:<*>" (($ first) ($ second))
      (cl->perl (* (num* (VAR $ first)) (num* (VAR $ second)))))

    (define-kp6-function "infix:</>" (($ first) ($ second))
      (cl->perl (/ (num* (VAR $ first)) (num* (VAR $ second)))))

    (define-kp6-function "infix:<~>" (($ first) ($ second))
      (cl->perl (concatenate 'string (str* (VAR $ first)) (str* (VAR $ second)))))

    (define-kp6-function ("prefix:<!>" :interpreter interpreter) (($ first))
      (make-instance 'kp6-Bit :value (not (kp6-dispatch (VAR $ first) interpreter :true))))

    (define-kp6-function "prefix:<~>" (($ first))
      (cl->perl (perl->display (VAR $ first))))

    (define-kp6-function ("not" :interpreter interpreter) (($ first))
      (make-instance 'kp6-Bit :value (not (kp6-dispatch (kp6-dispatch (VAR $ first) interpreter :true) interpreter :cl-landish))))

    (define-kp6-function "prefix:<@>" (($ first))
      (VAR $ first)) ;; unsure about this

    (define-kp6-function "chars" (($ first))
      (cl->perl (length (str* (VAR $ first)))))

    (define-kp6-function ("print" :returns 'true) ((@@ string))
      (format t "~A" (perl->display (VAR @ string))))

    (define-kp6-function ("say" :returns 'true :interpreter interpreter) ((@@ string))
      (call-kp6-function interpreter "print" :positional (list (VAR @ string)))
      (terpri))

    (define-kp6-function ("warn" :returns 'true :interpreter interpreter) (($ string))
      (warn "~A" (VAR $ string)))

    (define-kp6-function ("defined" :instance 'kp6-Bit) (($ object))
      (not (null (kp6-value (VAR $ object)))))

    (define-kp6-function ("map" :interpreter interpreter) (($ array) ($ sub))
      (kp6-dispatch (VAR $ array) interpreter :map (VAR $ sub)))

    (define-kp6-function ("join" :interpreter interpreter) (($ array) ($ sub))
      (kp6-dispatch (VAR $ array) interpreter :join (VAR $ sub)))))

;; AUTHORS
;;
;; The Pugs Team perl6-compiler@perl.org.
;;
;; SEE ALSO
;;
;; The Perl 6 homepage at http://dev.perl.org/perl6.
;;
;; The Pugs homepage at http://pugscode.org/.
;;
;; COPYRIGHT
;;
;; Copyright 2007 by Flavio Soibelmann Glock and others.
;;
;; This program is free software; you can redistribute it and/or modify it
;; under the same terms as Perl itself.
;;
;; See http://www.perl.com/perl/misc/Artistic.html
