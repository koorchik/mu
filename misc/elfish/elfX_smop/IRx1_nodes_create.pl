#!/usr/bin/perl
use strict;
use warnings;

my $def = <<'END_DEF';

CompUnit statements filename
Block statements

Use kind module_name expr

PackageDecl  scope plurality kind name traits block
#name:{ModuleName}
MethodDecl   scope typenames plurality name multisig traits block sigil postcircumfix 
SubDecl      scope typenames plurality name multisig traits block
MacroDecl    scope typenames plurality name multisig traits block
VarDecl      scope typenames plurality var postcircumfix traits default_op default_expr
#regards DeclareMethod, (name multisig | sigil postcircumfix )
#name:{ident} #XXX which can't be right?

Var     sigil twigil name  #name:{PathName}
Trait   verb expr
ClosureTrait kind block

ModuleName name pairs #name:{PathName}
PathName   path
SubName    category pairs desigilname signature
ShapedParamName ident postcircumfix
# (category pairs | desigilname)

Call    invocant method capture
Apply   function capture
Hyper   operator capture

Capture   arguments invocant
MultiSig  signatures
Signature parameters return_type
Parameter type_constraints quant param_var ident traits post_constraints default_expr
TypeConstraint value where_expr #(value | where_expr)
PostConstraint multisig where_expr #(multisig | where_expr)
ParamVar  sigil twigil name
# name: { PathName(like Var), SubName, ShapedParamName }

Undef
NumInt text base                            # or provide base-10 text?
NumDec intpart fracpart exp
NumRad radix intpart fracpart base exp 
Array  array    
Hash   hash
Pair   key value
Type   typename

Rx     pat modifiers
Buf    buf

# Subset  ???

For    expr block
Cond   clauses default invert_first_test 
Loop   pretest block posttest label 
Given  expr block
When   expr block
Label  labels statement


RegexDef ident pattern
Regex patterns

RxFirst patterns
RxEvery patterns
RxSubmatch patterns
RxAny patterns
RxAll patterns
RxSequence patterns

RxQuantifiedAtom atom quantifier
RxBackslash char
RxAssertion ident

RxModInternal mod

RxCapture pattern
RxGroup pattern

RxBlock block
RxBind var binding

RxLiteral text quote
RxSymbol symbol

# RxCommitSequence
# RxCommitGroup
# RxCommitRegex
# RxCommitMatch

# RxPat5 pat
# RxExact text
# RxMixinMod sigspace i #...
# RxModExpr mods expr
# RxModInline mods
# RxBackref backref_n
# RxAlias target target_spec expr
# RxQuant min max expr nongreedy
# RxASpace aspace_inpkg text
# RxSubrule created_in_pkg name exprs neg nocap
# RxARegex modpat mods expr
# RxBiind created_in_pkg name expr
# RxNamespace created_in_pkg nsname bindings pkg
# RxCode code
# RxCodeRx code
# RxIndependent expr
# RxConditional test expr_then expr_else
# RxLookaround is_forward is_positive is_expr

END_DEF

sub write_ir_info5 {
  my($file)=@_;
  my $code = <<'END_CODE';
# Warning: This file is mechanically written.  Your changes will be overwritten.
package IRx1_Info::Node;

our @extra_fields = qw( match );
sub new {
  my($cls,$name,$fields)=@_;
  bless {
    name => $name,
    fields => $fields,
    all_fields => [@extra_fields,@$fields],
  }, $cls;
}
sub name { shift->{name} }
sub fields { @{shift->{fields}} }
sub all_fields { @{shift->{all_fields}} }

package IRx1_Info;
my $def = <<'END_DEF';
<<DEF>>
END_DEF

# IR nodes
our @nodes;
our %node_index;

sub nodes { @nodes }
sub node_named { my($cls,$name)=@_; $node_index{$name} }

sub load_ir_node_config {
  my $node_class = __PACKAGE__.'::Node';
  my $ir_config = $def;
  for my $line (split(/\n/,$ir_config)) {
    next if $line =~ /^\s*$|^\s*\#/;
    $line =~ s/#.*//;
    my($name,@fields)=eval('qw{'.$line.'}');
    my $node = $node_class->new($name,\@fields);
    push(@nodes,$node);
    $node_index{$name} = $node;
  }
}
load_ir_node_config();

1;
__END__
END_CODE
    $code =~ s/<<DEF>>/$def/;
    text2file($code,$file);
}


sub write_ir_nodes {
  my($file)=@_;
  my $code = "".unindent(<<'  END');
    package IRx1 {
      class Base {
      };
      class CompUnit_and_Block {};
      class CompUnit is CompUnit_and_Block {};
      class Block    is CompUnit_and_Block {};

  END

  for my $node (IRx1_Info->nodes) {
    my($name,@fields)=($node->name,$node->fields);
    my @all = $node->all_fields;
    
    my $base = 'Base';
    $base = "${1}_Base" if $name =~ /([^_]+)_/;
    my $has = join("",map{"has \$.$_;\n        "} @all,'notes');
    my $params = join(',',map{"\$$_"}@all);
    my $init = join(', ',map{"'$_', \$$_"} @all);
    my $field_names = join(',',map{"'$_'"}@fields);
    my $field_values = join(',',map{'$.'.$_}@fields);

    $code .= unindent(<<"    END",'  ');
      class $name is $base {
        $has
        method newp($params) { self.new($init) };
        method callback(\$emitter,\$arg) { \$emitter.cb__$name(self,\$arg) };
        method node_name() { '$name' };
        method field_names() { [$field_names] };
        method field_values() { [$field_values] };
      };
    END
  }
  $code .= unindent(<<'  END');
    }
  END
  text2file($code,$file);
}


sub text2file {
  my($text,$file)=@_;
  open(F,">$file") or die "open() failed on $file: $!";
  print F $text;
  close F;
}

#XXX doesn't actually work.
sub unindent {
  my($s,$leave_indent)=@_;
  $leave_indent ||= "";
  $s =~ /^( *)$leave_indent/;
  my $indent = $1;
  $s =~ s/^$indent//mg;
  $s;
}

write_ir_info5("./IRx1_InfoForP5.pm");
require "./IRx1_InfoForP5.pm";
write_ir_nodes("./IRx1_Nodes.pm");
