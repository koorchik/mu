module Parse::Rule::Core;

=pod

C<Match> is the object that holds scope-local state; i.e. state that
gets allocated anew whenever you enter a new rule or parenthesized
group.  This is approximately the Match object that userland folks will
see, but it has some other clutter because of unclear design.

    $.from         - The place where this subrule/group started.
    $.to           - The place where this subrule/group ended.  C<Medium>
                     represents positions I<between> elements, so if you're
                     thinking of these as numbers, this will be one past the
                     last character matched.
    $.capture_num  - Numeric captures: $/[0], $/[1], ...
    $.capture_name - Named captures: $/<foo>, $/<bar>, ...
    $.multidex     - The "quantifier index".  This is an array that is an
                     index into the multidimensional arrays of the match
                     object, telling captures where in the deep structure
                     to store what they've captured.

=cut

our class Match {
    has $.from;
    has $.to;
    
    has $.capture_num;
    has $.capture_name;

    has $.multidex;

    submethod BUILD () {
        $.capture_num //= [];
        $.capture_name //= {};
        $.multidex //= [];
    }
}

our role Parser {
    method compile() {...}
}

our role Rule {
    method run($input, $match) {...}
}

# vim: ft=perl6 :
