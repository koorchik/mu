{ package KindaPerl6::Visitor::Emit::AstHTML; 
# Do not edit this file - Perl 5 generated by HASH(0x1b09380)
# AUTHORS, COPYRIGHT: Please look at the source file.
use v5;
use strict;
no strict "vars";
use constant KP6_DISABLE_INSECURE_CODE => 0;
use KindaPerl6::Runtime::Perl5::Runtime;
my $_MODIFIED; INIT { $_MODIFIED = {} }
INIT { $_ = ::DISPATCH($::Scalar, "new", { modified => $_MODIFIED, name => "$_" } ); }
do {do { if (::DISPATCH(::DISPATCH(::DISPATCH(  ( $GLOBAL::Code_VAR_defined = $GLOBAL::Code_VAR_defined || ::DISPATCH( $::Routine, "new", )  ) 
, 'APPLY', $::KindaPerl6::Visitor::Emit::AstHTML )
,"true"),"p5landish") ) { do {} }  else { do {do {::MODIFIED($::KindaPerl6::Visitor::Emit::AstHTML);
$::KindaPerl6::Visitor::Emit::AstHTML = ::DISPATCH( ::DISPATCH( $::Class, 'new', ::DISPATCH( $::Str, 'new', 'KindaPerl6::Visitor::Emit::AstHTML' )
 )
, 'PROTOTYPE',  )
}} } }
; ::DISPATCH( ::DISPATCH( $::KindaPerl6::Visitor::Emit::AstHTML, 'HOW',  )
, 'add_method', ::DISPATCH( $::Str, 'new', 'visit' )
, ::DISPATCH( $::Code, 'new', { code => sub { 
# emit_declarations
my $result; $result = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$result' } )  unless defined $result; INIT { $result = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$result' } ) }
;
my $data; $data = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$data' } )  unless defined $data; INIT { $data = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$data' } ) }
;
my  $List__ = ::DISPATCH( $::ArrayContainer, 'new', { modified => $_MODIFIED, name => '$List__' } ) ; 
;
my $node; $node = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$node' } )  unless defined $node; INIT { $node = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$node' } ) }
;
my $node_name; $node_name = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$node_name' } )  unless defined $node_name; INIT { $node_name = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$node_name' } ) }
;

# get $self
$self = shift; 
# emit_arguments
my $CAPTURE; $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } )  unless defined $CAPTURE; INIT { $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } ) }
my  $List__ = ::DISPATCH( $::ArrayContainer, 'new', { modified => $_MODIFIED, name => '$List__' } ) ; 
::DISPATCH_VAR($CAPTURE,"STORE",::CAPTURIZE(\@_));::DISPATCH_VAR( $List__, 'STORE', ::DISPATCH( $CAPTURE, 'array',  )
 )
;do {::MODIFIED($Hash__);
$Hash__ = ::DISPATCH( $CAPTURE, 'hash',  )
};{ my $_param_index = 0;  if ( ::DISPATCH( $GLOBAL::Code_exists,  'APPLY',  ::DISPATCH(  $Hash__, 'LOOKUP',  ::DISPATCH( $::Str, 'new', 'node' )  ) )->{_value}  )  { do {::MODIFIED($node);
$node = ::DISPATCH( $Hash__, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'node' )
 )
} }  elsif ( ::DISPATCH( $GLOBAL::Code_exists,  'APPLY',  ::DISPATCH(  $List__, 'INDEX',  ::DISPATCH( $::Int, 'new', $_param_index )  ) )->{_value}  )  { $node = ::DISPATCH(  $List__, 'INDEX',  ::DISPATCH( $::Int, 'new', $_param_index++ )  );  }  if ( ::DISPATCH( $GLOBAL::Code_exists,  'APPLY',  ::DISPATCH(  $Hash__, 'LOOKUP',  ::DISPATCH( $::Str, 'new', 'node_name' )  ) )->{_value}  )  { do {::MODIFIED($node_name);
$node_name = ::DISPATCH( $Hash__, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'node_name' )
 )
} }  elsif ( ::DISPATCH( $GLOBAL::Code_exists,  'APPLY',  ::DISPATCH(  $List__, 'INDEX',  ::DISPATCH( $::Int, 'new', $_param_index )  ) )->{_value}  )  { $node_name = ::DISPATCH(  $List__, 'INDEX',  ::DISPATCH( $::Int, 'new', $_param_index++ )  );  } } 
# emit_body
do {::MODIFIED($result);
$result = ::DISPATCH( $::Str, 'new', '' )
}; do {::MODIFIED($result);
$result = ::DISPATCH(  ( $GLOBAL::Code_infix_58__60__126__62_ = $GLOBAL::Code_infix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", )  ) 
, 'APPLY', $result, ::DISPATCH(  ( $GLOBAL::Code_infix_58__60__126__62_ = $GLOBAL::Code_infix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", )  ) 
, 'APPLY', ::DISPATCH( $::Str, 'new', '<span class="' )
, ::DISPATCH(  ( $GLOBAL::Code_infix_58__60__126__62_ = $GLOBAL::Code_infix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", )  ) 
, 'APPLY', ::DISPATCH(  ( $Main::Code_mangle_ident = $Main::Code_mangle_ident || ::DISPATCH( $::Routine, "new", )  ) 
, 'APPLY', $node_name )
, ::DISPATCH( $::Str, 'new', '">' )
 )
 )
 )
}; do {::MODIFIED($result);
$result = ::DISPATCH(  ( $GLOBAL::Code_infix_58__60__126__62_ = $GLOBAL::Code_infix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", )  ) 
, 'APPLY', $result, ::DISPATCH(  ( $GLOBAL::Code_infix_58__60__126__62_ = $GLOBAL::Code_infix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", )  ) 
, 'APPLY', ::DISPATCH( $::Str, 'new', '::' )
, ::DISPATCH(  ( $GLOBAL::Code_infix_58__60__126__62_ = $GLOBAL::Code_infix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", )  ) 
, 'APPLY', $node_name, ::DISPATCH( $::Str, 'new', '( ' )
 )
 )
 )
}; do {::MODIFIED($data);
$data = ::DISPATCH( $node, 'attribs',  )
}; ::DISPATCH( ::DISPATCH(  ( $GLOBAL::Code_keys = $GLOBAL::Code_keys || ::DISPATCH( $::Routine, "new", )  ) 
, 'APPLY', ::DISPATCH(  ( $GLOBAL::Code_prefix_58__60__37__62_ = $GLOBAL::Code_prefix_58__60__37__62_ || ::DISPATCH( $::Routine, "new", )  ) 
, 'APPLY', $data )
 )
, 'map', ::DISPATCH( $::Code, 'new', { code => sub { my  $List__ = ::DISPATCH( $::ArrayContainer, 'new', { modified => $_MODIFIED, name => '$List__' } ) ; 
;
my $item; $item = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$item' } )  unless defined $item; INIT { $item = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$item' } ) }
;
my $CAPTURE; $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } )  unless defined $CAPTURE; INIT { $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } ) }
my  $List__ = ::DISPATCH( $::ArrayContainer, 'new', { modified => $_MODIFIED, name => '$List__' } ) ; 
::DISPATCH_VAR($CAPTURE,"STORE",::CAPTURIZE(\@_));::DISPATCH_VAR( $List__, 'STORE', ::DISPATCH( $CAPTURE, 'array',  )
 )
;do {::MODIFIED($Hash__);
$Hash__ = ::DISPATCH( $CAPTURE, 'hash',  )
};{ my $_param_index = 0;  if ( ::DISPATCH( $GLOBAL::Code_exists,  'APPLY',  ::DISPATCH(  $Hash__, 'LOOKUP',  ::DISPATCH( $::Str, 'new', 'item' )  ) )->{_value}  )  { do {::MODIFIED($item);
$item = ::DISPATCH( $Hash__, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'item' )
 )
} }  elsif ( ::DISPATCH( $GLOBAL::Code_exists,  'APPLY',  ::DISPATCH(  $List__, 'INDEX',  ::DISPATCH( $::Int, 'new', $_param_index )  ) )->{_value}  )  { $item = ::DISPATCH(  $List__, 'INDEX',  ::DISPATCH( $::Int, 'new', $_param_index++ )  );  } } do {::MODIFIED($result);
$result = ::DISPATCH(  ( $GLOBAL::Code_infix_58__60__126__62_ = $GLOBAL::Code_infix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", )  ) 
, 'APPLY', $result, ::DISPATCH(  ( $GLOBAL::Code_infix_58__60__126__62_ = $GLOBAL::Code_infix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", )  ) 
, 'APPLY', ::DISPATCH( $::Str, 'new', ' ' )
, ::DISPATCH(  ( $GLOBAL::Code_infix_58__60__126__62_ = $GLOBAL::Code_infix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", )  ) 
, 'APPLY', $item, ::DISPATCH( $::Str, 'new', ' => ' )
 )
 )
 )
}; do { if (::DISPATCH(::DISPATCH(::DISPATCH( ::DISPATCH( $data, 'LOOKUP', $item )
, 'isa', ::DISPATCH( $::Str, 'new', 'Array' )
 )
,"true"),"p5landish") ) { do {do {::MODIFIED($result);
$result = ::DISPATCH(  ( $GLOBAL::Code_infix_58__60__126__62_ = $GLOBAL::Code_infix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", )  ) 
, 'APPLY', $result, ::DISPATCH( $::Str, 'new', '[ ' )
 )
}; ::DISPATCH( ::DISPATCH(  ( $GLOBAL::Code_prefix_58__60__64__62_ = $GLOBAL::Code_prefix_58__60__64__62_ || ::DISPATCH( $::Routine, "new", )  ) 
, 'APPLY', ::DISPATCH( $data, 'LOOKUP', $item )
 )
, 'map', ::DISPATCH( $::Code, 'new', { code => sub { my  $List__ = ::DISPATCH( $::ArrayContainer, 'new', { modified => $_MODIFIED, name => '$List__' } ) ; 
;
my $subitem; $subitem = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$subitem' } )  unless defined $subitem; INIT { $subitem = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$subitem' } ) }
;
my $CAPTURE; $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } )  unless defined $CAPTURE; INIT { $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } ) }
my  $List__ = ::DISPATCH( $::ArrayContainer, 'new', { modified => $_MODIFIED, name => '$List__' } ) ; 
::DISPATCH_VAR($CAPTURE,"STORE",::CAPTURIZE(\@_));::DISPATCH_VAR( $List__, 'STORE', ::DISPATCH( $CAPTURE, 'array',  )
 )
;do {::MODIFIED($Hash__);
$Hash__ = ::DISPATCH( $CAPTURE, 'hash',  )
};{ my $_param_index = 0;  if ( ::DISPATCH( $GLOBAL::Code_exists,  'APPLY',  ::DISPATCH(  $Hash__, 'LOOKUP',  ::DISPATCH( $::Str, 'new', 'subitem' )  ) )->{_value}  )  { do {::MODIFIED($subitem);
$subitem = ::DISPATCH( $Hash__, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'subitem' )
 )
} }  elsif ( ::DISPATCH( $GLOBAL::Code_exists,  'APPLY',  ::DISPATCH(  $List__, 'INDEX',  ::DISPATCH( $::Int, 'new', $_param_index )  ) )->{_value}  )  { $subitem = ::DISPATCH(  $List__, 'INDEX',  ::DISPATCH( $::Int, 'new', $_param_index++ )  );  } } do { if (::DISPATCH(::DISPATCH(::DISPATCH( $subitem, 'isa', ::DISPATCH( $::Str, 'new', 'Array' )
 )
,"true"),"p5landish") ) { do {do {::MODIFIED($result);
$result = ::DISPATCH(  ( $GLOBAL::Code_infix_58__60__126__62_ = $GLOBAL::Code_infix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", )  ) 
, 'APPLY', $result, ::DISPATCH( $::Str, 'new', ' [ ... ], ' )
 )
}} }  else { do {do {::MODIFIED($result);
$result = ::DISPATCH(  ( $GLOBAL::Code_infix_58__60__126__62_ = $GLOBAL::Code_infix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", )  ) 
, 'APPLY', $result, ::DISPATCH(  ( $GLOBAL::Code_infix_58__60__126__62_ = $GLOBAL::Code_infix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", )  ) 
, 'APPLY', ::DISPATCH( $subitem, 'emit', $self )
, ::DISPATCH( $::Str, 'new', ', ' )
 )
 )
}} } }
 }, signature => ::DISPATCH( $::Signature, "new", { invocant => $::Undef, array    => ::DISPATCH( $::List, "new", { _array => [ ::DISPATCH( $::Signature::Item, 'new', { sigil  => '$', twigil => '', name   => 'subitem', value  => $::Undef, has_default    => ::DISPATCH( $::Bit, 'new', 0 )
, is_named_only  => ::DISPATCH( $::Bit, 'new', 0 )
, is_optional    => ::DISPATCH( $::Bit, 'new', 0 )
, is_slurpy      => ::DISPATCH( $::Bit, 'new', 0 )
, is_multidimensional  => ::DISPATCH( $::Bit, 'new', 0 )
, is_rw          => ::DISPATCH( $::Bit, 'new', 0 )
, is_copy        => ::DISPATCH( $::Bit, 'new', 0 )
,  } )
,  ] } ), return   => $::Undef, } )
,  } )
 )
; do {::MODIFIED($result);
$result = ::DISPATCH(  ( $GLOBAL::Code_infix_58__60__126__62_ = $GLOBAL::Code_infix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", )  ) 
, 'APPLY', $result, ::DISPATCH( $::Str, 'new', ' ], ' )
 )
}} }  else { do {do { if (::DISPATCH(::DISPATCH(::DISPATCH( ::DISPATCH( $data, 'LOOKUP', $item )
, 'isa', ::DISPATCH( $::Str, 'new', 'Hash' )
 )
,"true"),"p5landish") ) { do {do {::MODIFIED($result);
$result = ::DISPATCH(  ( $GLOBAL::Code_infix_58__60__126__62_ = $GLOBAL::Code_infix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", )  ) 
, 'APPLY', $result, ::DISPATCH( $::Str, 'new', '{ ' )
 )
}; ::DISPATCH( ::DISPATCH(  ( $GLOBAL::Code_keys = $GLOBAL::Code_keys || ::DISPATCH( $::Routine, "new", )  ) 
, 'APPLY', ::DISPATCH(  ( $GLOBAL::Code_prefix_58__60__37__62_ = $GLOBAL::Code_prefix_58__60__37__62_ || ::DISPATCH( $::Routine, "new", )  ) 
, 'APPLY', ::DISPATCH( $data, 'LOOKUP', $item )
 )
 )
, 'map', ::DISPATCH( $::Code, 'new', { code => sub { my  $List__ = ::DISPATCH( $::ArrayContainer, 'new', { modified => $_MODIFIED, name => '$List__' } ) ; 
;
my $subitem; $subitem = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$subitem' } )  unless defined $subitem; INIT { $subitem = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$subitem' } ) }
;
my $CAPTURE; $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } )  unless defined $CAPTURE; INIT { $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } ) }
my  $List__ = ::DISPATCH( $::ArrayContainer, 'new', { modified => $_MODIFIED, name => '$List__' } ) ; 
::DISPATCH_VAR($CAPTURE,"STORE",::CAPTURIZE(\@_));::DISPATCH_VAR( $List__, 'STORE', ::DISPATCH( $CAPTURE, 'array',  )
 )
;do {::MODIFIED($Hash__);
$Hash__ = ::DISPATCH( $CAPTURE, 'hash',  )
};{ my $_param_index = 0;  if ( ::DISPATCH( $GLOBAL::Code_exists,  'APPLY',  ::DISPATCH(  $Hash__, 'LOOKUP',  ::DISPATCH( $::Str, 'new', 'subitem' )  ) )->{_value}  )  { do {::MODIFIED($subitem);
$subitem = ::DISPATCH( $Hash__, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'subitem' )
 )
} }  elsif ( ::DISPATCH( $GLOBAL::Code_exists,  'APPLY',  ::DISPATCH(  $List__, 'INDEX',  ::DISPATCH( $::Int, 'new', $_param_index )  ) )->{_value}  )  { $subitem = ::DISPATCH(  $List__, 'INDEX',  ::DISPATCH( $::Int, 'new', $_param_index++ )  );  } } do {::MODIFIED($result);
$result = ::DISPATCH(  ( $GLOBAL::Code_infix_58__60__126__62_ = $GLOBAL::Code_infix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", )  ) 
, 'APPLY', $result, ::DISPATCH(  ( $GLOBAL::Code_infix_58__60__126__62_ = $GLOBAL::Code_infix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", )  ) 
, 'APPLY', $subitem, ::DISPATCH(  ( $GLOBAL::Code_infix_58__60__126__62_ = $GLOBAL::Code_infix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", )  ) 
, 'APPLY', ::DISPATCH( $::Str, 'new', ' => ' )
, ::DISPATCH(  ( $GLOBAL::Code_infix_58__60__126__62_ = $GLOBAL::Code_infix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", )  ) 
, 'APPLY', ::DISPATCH( ::DISPATCH( ::DISPATCH( $data, 'LOOKUP', $item )
, 'LOOKUP', $subitem )
, 'emit', $self )
, ::DISPATCH( $::Str, 'new', ', ' )
 )
 )
 )
 )
} }, signature => ::DISPATCH( $::Signature, "new", { invocant => $::Undef, array    => ::DISPATCH( $::List, "new", { _array => [ ::DISPATCH( $::Signature::Item, 'new', { sigil  => '$', twigil => '', name   => 'subitem', value  => $::Undef, has_default    => ::DISPATCH( $::Bit, 'new', 0 )
, is_named_only  => ::DISPATCH( $::Bit, 'new', 0 )
, is_optional    => ::DISPATCH( $::Bit, 'new', 0 )
, is_slurpy      => ::DISPATCH( $::Bit, 'new', 0 )
, is_multidimensional  => ::DISPATCH( $::Bit, 'new', 0 )
, is_rw          => ::DISPATCH( $::Bit, 'new', 0 )
, is_copy        => ::DISPATCH( $::Bit, 'new', 0 )
,  } )
,  ] } ), return   => $::Undef, } )
,  } )
 )
; do {::MODIFIED($result);
$result = ::DISPATCH(  ( $GLOBAL::Code_infix_58__60__126__62_ = $GLOBAL::Code_infix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", )  ) 
, 'APPLY', $result, ::DISPATCH( $::Str, 'new', ' }, ' )
 )
}} }  else { do {do { if (::DISPATCH(::DISPATCH(::DISPATCH( ::DISPATCH( $data, 'LOOKUP', $item )
, 'isa', ::DISPATCH( $::Str, 'new', 'Str' )
 )
,"true"),"p5landish") ) { do {do {::MODIFIED($result);
$result = ::DISPATCH(  ( $GLOBAL::Code_infix_58__60__126__62_ = $GLOBAL::Code_infix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", )  ) 
, 'APPLY', $result, ::DISPATCH(  ( $GLOBAL::Code_infix_58__60__126__62_ = $GLOBAL::Code_infix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", )  ) 
, 'APPLY', ::DISPATCH( $::Str, 'new', chr( 39 ) )
, ::DISPATCH(  ( $GLOBAL::Code_infix_58__60__126__62_ = $GLOBAL::Code_infix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", )  ) 
, 'APPLY', ::DISPATCH( $data, 'LOOKUP', $item )
, ::DISPATCH(  ( $GLOBAL::Code_infix_58__60__126__62_ = $GLOBAL::Code_infix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", )  ) 
, 'APPLY', ::DISPATCH( $::Str, 'new', chr( 39 ) )
, ::DISPATCH( $::Str, 'new', ', ' )
 )
 )
 )
 )
}} }  else { do {do {::MODIFIED($result);
$result = ::DISPATCH(  ( $GLOBAL::Code_infix_58__60__126__62_ = $GLOBAL::Code_infix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", )  ) 
, 'APPLY', $result, ::DISPATCH(  ( $GLOBAL::Code_infix_58__60__126__62_ = $GLOBAL::Code_infix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", )  ) 
, 'APPLY', ::DISPATCH( ::DISPATCH( $data, 'LOOKUP', $item )
, 'emit', $self )
, ::DISPATCH( $::Str, 'new', ', ' )
 )
 )
}} } }
} } }
} } }
 }, signature => ::DISPATCH( $::Signature, "new", { invocant => $::Undef, array    => ::DISPATCH( $::List, "new", { _array => [ ::DISPATCH( $::Signature::Item, 'new', { sigil  => '$', twigil => '', name   => 'item', value  => $::Undef, has_default    => ::DISPATCH( $::Bit, 'new', 0 )
, is_named_only  => ::DISPATCH( $::Bit, 'new', 0 )
, is_optional    => ::DISPATCH( $::Bit, 'new', 0 )
, is_slurpy      => ::DISPATCH( $::Bit, 'new', 0 )
, is_multidimensional  => ::DISPATCH( $::Bit, 'new', 0 )
, is_rw          => ::DISPATCH( $::Bit, 'new', 0 )
, is_copy        => ::DISPATCH( $::Bit, 'new', 0 )
,  } )
,  ] } ), return   => $::Undef, } )
,  } )
 )
; do {::MODIFIED($result);
$result = ::DISPATCH(  ( $GLOBAL::Code_infix_58__60__126__62_ = $GLOBAL::Code_infix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", )  ) 
, 'APPLY', $result, ::DISPATCH( $::Str, 'new', ') ' )
 )
}; do {::MODIFIED($result);
$result = ::DISPATCH(  ( $GLOBAL::Code_infix_58__60__126__62_ = $GLOBAL::Code_infix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", )  ) 
, 'APPLY', $result, ::DISPATCH( $::Str, 'new', '</span>' )
 )
} }, signature => ::DISPATCH( $::Signature, "new", { invocant => $::Undef, array    => ::DISPATCH( $::List, "new", { _array => [ ::DISPATCH( $::Signature::Item, 'new', { sigil  => '$', twigil => '', name   => 'node', value  => $::Undef, has_default    => ::DISPATCH( $::Bit, 'new', 0 )
, is_named_only  => ::DISPATCH( $::Bit, 'new', 0 )
, is_optional    => ::DISPATCH( $::Bit, 'new', 0 )
, is_slurpy      => ::DISPATCH( $::Bit, 'new', 0 )
, is_multidimensional  => ::DISPATCH( $::Bit, 'new', 0 )
, is_rw          => ::DISPATCH( $::Bit, 'new', 0 )
, is_copy        => ::DISPATCH( $::Bit, 'new', 0 )
,  } )
, ::DISPATCH( $::Signature::Item, 'new', { sigil  => '$', twigil => '', name   => 'node_name', value  => $::Undef, has_default    => ::DISPATCH( $::Bit, 'new', 0 )
, is_named_only  => ::DISPATCH( $::Bit, 'new', 0 )
, is_optional    => ::DISPATCH( $::Bit, 'new', 0 )
, is_slurpy      => ::DISPATCH( $::Bit, 'new', 0 )
, is_multidimensional  => ::DISPATCH( $::Bit, 'new', 0 )
, is_rw          => ::DISPATCH( $::Bit, 'new', 0 )
, is_copy        => ::DISPATCH( $::Bit, 'new', 0 )
,  } )
,  ] } ), return   => $::Undef, } )
,  } )
 )
}
; 1 }
