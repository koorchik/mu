{ package KindaPerl6::Grammar; 
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
, 'APPLY', $::KindaPerl6::Grammar )
,"true"),"p5landish") ) { do {} }  else { do {do {::MODIFIED($::KindaPerl6::Grammar);
$::KindaPerl6::Grammar = ::DISPATCH( ::DISPATCH( $::Class, 'new', ::DISPATCH( $::Str, 'new', 'KindaPerl6::Grammar' )
 )
, 'PROTOTYPE',  )
}} } }
;     sub _rule_sig_type {
    local $GLOBAL::_M = [ $GLOBAL::_M, 'create', pos(), \$_ ]; 
    $GLOBAL::_M2 = $GLOBAL::_M; do{ my $_pos = pos(); ( ( do{ my $_pos = pos(); ( ( /\G\:\:/g ) ) || ( ( ( pos() = $_pos ) || 1 ) && ( /\G/g ) ) } && ( _rule_full_ident() && ( $GLOBAL::_M = [ $GLOBAL::_M2, "named_capture", "full_ident" ] ))  && do { local $GLOBAL::_M; _rule_ws() } && do { {local $GLOBAL::_M = [ $GLOBAL::_M, "to", pos() ]; 
    Match::from_global_data( $GLOBAL::_M ); 
    $MATCH = $GLOBAL::MATCH = pop @Match::Matches; 
    @Match::Matches = (); 
    do {::DISPATCH_VAR( $GLOBAL::_REGEX_RETURN_, "STORE", ::DISPATCH(  ( $GLOBAL::Code_prefix_58__60__36__62_ = $GLOBAL::Code_prefix_58__60__36__62_ || ::DISPATCH( $::Routine, "new", )  ) 
    , 'APPLY', ::DISPATCH( $MATCH, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'full_ident' )
     )
     )
     )
    };} if ( DISPATCH.new( $GLOBAL::Code_defined, "APPLY", $GLOBAL::_REGEX_RETURN_ )->{_value} ) { $GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", DISPATCH.new( $GLOBAL::_REGEX_RETURN_, "FETCH" ) ]; } 1 } ) ) || ( ( ( pos() = $_pos ) || 1 ) && ( /\G/g && do { {local $GLOBAL::_M = [ $GLOBAL::_M, "to", pos() ]; 
    Match::from_global_data( $GLOBAL::_M ); 
    $MATCH = $GLOBAL::MATCH = pop @Match::Matches; 
    @Match::Matches = (); 
    do {::DISPATCH_VAR( $GLOBAL::_REGEX_RETURN_, "STORE", ::DISPATCH( $::Str, 'new', '' )
     )
    };} if ( DISPATCH.new( $GLOBAL::Code_defined, "APPLY", $GLOBAL::_REGEX_RETURN_ )->{_value} ) { $GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", DISPATCH.new( $GLOBAL::_REGEX_RETURN_, "FETCH" ) ]; } 1 } ) ) } && do { $GLOBAL::_M = [ $GLOBAL::_M, 'to', pos() ]; 
    $GLOBAL::_M2 = $GLOBAL::_M }; } 
::DISPATCH(::DISPATCH($::KindaPerl6::Grammar,"HOW"),"add_method", ::DISPATCH( $::Str, "new", "sig_type" ), ::DISPATCH( $::Method, "new", { code => sub { local $GLOBAL::_Class = shift; undef $GLOBAL::_M2; my ($str,$pos) = @_;$str = defined($str) ? $str : $_;local $_ = ( ref($str) ? DISPATCH.new( $str, "Str" )->{_value} : $str ); pos($_) = (ref $pos) ? ( $pos->{_value} ) : ( 0 + pos($_) );if ( _rule_sig_type() ) { Match::from_global_data( $GLOBAL::_M2 ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; } else { $MATCH = $GLOBAL::MATCH = Match->new(); } @Match::Matches = (); return $MATCH; } } ), );     sub _rule_sig_default_value {
    local $GLOBAL::_M = [ $GLOBAL::_M, 'create', pos(), \$_ ]; 
    $GLOBAL::_M2 = $GLOBAL::_M; do{ my $_pos = pos(); ( ( do { local $GLOBAL::_M; _rule_opt_ws() } && /\G\=/g && do { local $GLOBAL::_M; _rule_opt_ws() } && ( _rule_exp() && ( $GLOBAL::_M = [ $GLOBAL::_M2, "named_capture", "exp" ] ))  && do { local $GLOBAL::_M; _rule_opt_ws() } && do { {local $GLOBAL::_M = [ $GLOBAL::_M, "to", pos() ]; 
    Match::from_global_data( $GLOBAL::_M ); 
    $MATCH = $GLOBAL::MATCH = pop @Match::Matches; 
    @Match::Matches = (); 
    do {::DISPATCH_VAR( $GLOBAL::_REGEX_RETURN_, "STORE", ::DISPATCH( $::Hash, 'new', [ ::DISPATCH( $::Str, 'new', 'has_default' )
    , ::DISPATCH( $::Int, 'new', 1 )
     ],[ ::DISPATCH( $::Str, 'new', 'default' )
    , ::DISPATCH(  ( $GLOBAL::Code_prefix_58__60__36__62_ = $GLOBAL::Code_prefix_58__60__36__62_ || ::DISPATCH( $::Routine, "new", )  ) 
    , 'APPLY', ::DISPATCH( $MATCH, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'exp' )
     )
     )
     ],
     )
     )
    };} if ( DISPATCH.new( $GLOBAL::Code_defined, "APPLY", $GLOBAL::_REGEX_RETURN_ )->{_value} ) { $GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", DISPATCH.new( $GLOBAL::_REGEX_RETURN_, "FETCH" ) ]; } 1 } ) ) || ( ( ( pos() = $_pos ) || 1 ) && ( /\G/g && do { {local $GLOBAL::_M = [ $GLOBAL::_M, "to", pos() ]; 
    Match::from_global_data( $GLOBAL::_M ); 
    $MATCH = $GLOBAL::MATCH = pop @Match::Matches; 
    @Match::Matches = (); 
    do {::DISPATCH_VAR( $GLOBAL::_REGEX_RETURN_, "STORE", ::DISPATCH( $::Hash, 'new', [ ::DISPATCH( $::Str, 'new', 'has_default' )
    , ::DISPATCH( $::Int, 'new', 0 )
     ],[ ::DISPATCH( $::Str, 'new', 'default' )
    , ::DISPATCH( $::Val::Undef, 'new',  )
     ],
     )
     )
    };} if ( DISPATCH.new( $GLOBAL::Code_defined, "APPLY", $GLOBAL::_REGEX_RETURN_ )->{_value} ) { $GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", DISPATCH.new( $GLOBAL::_REGEX_RETURN_, "FETCH" ) ]; } 1 } ) ) } && do { $GLOBAL::_M = [ $GLOBAL::_M, 'to', pos() ]; 
    $GLOBAL::_M2 = $GLOBAL::_M }; } 
::DISPATCH(::DISPATCH($::KindaPerl6::Grammar,"HOW"),"add_method", ::DISPATCH( $::Str, "new", "sig_default_value" ), ::DISPATCH( $::Method, "new", { code => sub { local $GLOBAL::_Class = shift; undef $GLOBAL::_M2; my ($str,$pos) = @_;$str = defined($str) ? $str : $_;local $_ = ( ref($str) ? DISPATCH.new( $str, "Str" )->{_value} : $str ); pos($_) = (ref $pos) ? ( $pos->{_value} ) : ( 0 + pos($_) );if ( _rule_sig_default_value() ) { Match::from_global_data( $GLOBAL::_M2 ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; } else { $MATCH = $GLOBAL::MATCH = Match->new(); } @Match::Matches = (); return $MATCH; } } ), );     sub _rule_sig_named_only {
    local $GLOBAL::_M = [ $GLOBAL::_M, 'create', pos(), \$_ ]; 
    $GLOBAL::_M2 = $GLOBAL::_M; do{ my $_pos = pos(); ( ( /\G\:/g && do { {local $GLOBAL::_M = [ $GLOBAL::_M, "to", pos() ]; 
    Match::from_global_data( $GLOBAL::_M ); 
    $MATCH = $GLOBAL::MATCH = pop @Match::Matches; 
    @Match::Matches = (); 
    do {::DISPATCH_VAR( $GLOBAL::_REGEX_RETURN_, "STORE", ::DISPATCH( $::Int, 'new', 1 )
     )
    };} if ( DISPATCH.new( $GLOBAL::Code_defined, "APPLY", $GLOBAL::_REGEX_RETURN_ )->{_value} ) { $GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", DISPATCH.new( $GLOBAL::_REGEX_RETURN_, "FETCH" ) ]; } 1 } ) ) || ( ( ( pos() = $_pos ) || 1 ) && ( do { {local $GLOBAL::_M = [ $GLOBAL::_M, "to", pos() ]; 
    Match::from_global_data( $GLOBAL::_M ); 
    $MATCH = $GLOBAL::MATCH = pop @Match::Matches; 
    @Match::Matches = (); 
    do {::DISPATCH_VAR( $GLOBAL::_REGEX_RETURN_, "STORE", ::DISPATCH( $::Int, 'new', 0 )
     )
    };} if ( DISPATCH.new( $GLOBAL::Code_defined, "APPLY", $GLOBAL::_REGEX_RETURN_ )->{_value} ) { $GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", DISPATCH.new( $GLOBAL::_REGEX_RETURN_, "FETCH" ) ]; } 1 } ) ) } && do { $GLOBAL::_M = [ $GLOBAL::_M, 'to', pos() ]; 
    $GLOBAL::_M2 = $GLOBAL::_M }; } 
::DISPATCH(::DISPATCH($::KindaPerl6::Grammar,"HOW"),"add_method", ::DISPATCH( $::Str, "new", "sig_named_only" ), ::DISPATCH( $::Method, "new", { code => sub { local $GLOBAL::_Class = shift; undef $GLOBAL::_M2; my ($str,$pos) = @_;$str = defined($str) ? $str : $_;local $_ = ( ref($str) ? DISPATCH.new( $str, "Str" )->{_value} : $str ); pos($_) = (ref $pos) ? ( $pos->{_value} ) : ( 0 + pos($_) );if ( _rule_sig_named_only() ) { Match::from_global_data( $GLOBAL::_M2 ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; } else { $MATCH = $GLOBAL::MATCH = Match->new(); } @Match::Matches = (); return $MATCH; } } ), );     sub _rule_sig_optional {
    local $GLOBAL::_M = [ $GLOBAL::_M, 'create', pos(), \$_ ]; 
    $GLOBAL::_M2 = $GLOBAL::_M; do{ my $_pos = pos(); ( ( /\G\?/g && do { {local $GLOBAL::_M = [ $GLOBAL::_M, "to", pos() ]; 
    Match::from_global_data( $GLOBAL::_M ); 
    $MATCH = $GLOBAL::MATCH = pop @Match::Matches; 
    @Match::Matches = (); 
    do {::DISPATCH_VAR( $GLOBAL::_REGEX_RETURN_, "STORE", ::DISPATCH( $::Int, 'new', 1 )
     )
    };} if ( DISPATCH.new( $GLOBAL::Code_defined, "APPLY", $GLOBAL::_REGEX_RETURN_ )->{_value} ) { $GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", DISPATCH.new( $GLOBAL::_REGEX_RETURN_, "FETCH" ) ]; } 1 } ) ) || ( ( ( pos() = $_pos ) || 1 ) && ( do{ my $_pos = pos(); ( ( /\G\!/g ) ) || ( ( ( pos() = $_pos ) || 1 ) && ( /\G/g ) ) } && do { {local $GLOBAL::_M = [ $GLOBAL::_M, "to", pos() ]; 
    Match::from_global_data( $GLOBAL::_M ); 
    $MATCH = $GLOBAL::MATCH = pop @Match::Matches; 
    @Match::Matches = (); 
    do {::DISPATCH_VAR( $GLOBAL::_REGEX_RETURN_, "STORE", ::DISPATCH( $::Int, 'new', 0 )
     )
    };} if ( DISPATCH.new( $GLOBAL::Code_defined, "APPLY", $GLOBAL::_REGEX_RETURN_ )->{_value} ) { $GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", DISPATCH.new( $GLOBAL::_REGEX_RETURN_, "FETCH" ) ]; } 1 } ) ) } && do { $GLOBAL::_M = [ $GLOBAL::_M, 'to', pos() ]; 
    $GLOBAL::_M2 = $GLOBAL::_M }; } 
::DISPATCH(::DISPATCH($::KindaPerl6::Grammar,"HOW"),"add_method", ::DISPATCH( $::Str, "new", "sig_optional" ), ::DISPATCH( $::Method, "new", { code => sub { local $GLOBAL::_Class = shift; undef $GLOBAL::_M2; my ($str,$pos) = @_;$str = defined($str) ? $str : $_;local $_ = ( ref($str) ? DISPATCH.new( $str, "Str" )->{_value} : $str ); pos($_) = (ref $pos) ? ( $pos->{_value} ) : ( 0 + pos($_) );if ( _rule_sig_optional() ) { Match::from_global_data( $GLOBAL::_M2 ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; } else { $MATCH = $GLOBAL::MATCH = Match->new(); } @Match::Matches = (); return $MATCH; } } ), );     sub _rule_sig_slurpy {
    local $GLOBAL::_M = [ $GLOBAL::_M, 'create', pos(), \$_ ]; 
    $GLOBAL::_M2 = $GLOBAL::_M; do{ my $_pos = pos(); ( ( /\G\*/g && do { {local $GLOBAL::_M = [ $GLOBAL::_M, "to", pos() ]; 
    Match::from_global_data( $GLOBAL::_M ); 
    $MATCH = $GLOBAL::MATCH = pop @Match::Matches; 
    @Match::Matches = (); 
    do {::DISPATCH_VAR( $GLOBAL::_REGEX_RETURN_, "STORE", ::DISPATCH( $::Int, 'new', 1 )
     )
    };} if ( DISPATCH.new( $GLOBAL::Code_defined, "APPLY", $GLOBAL::_REGEX_RETURN_ )->{_value} ) { $GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", DISPATCH.new( $GLOBAL::_REGEX_RETURN_, "FETCH" ) ]; } 1 } ) ) || ( ( ( pos() = $_pos ) || 1 ) && ( do { {local $GLOBAL::_M = [ $GLOBAL::_M, "to", pos() ]; 
    Match::from_global_data( $GLOBAL::_M ); 
    $MATCH = $GLOBAL::MATCH = pop @Match::Matches; 
    @Match::Matches = (); 
    do {::DISPATCH_VAR( $GLOBAL::_REGEX_RETURN_, "STORE", ::DISPATCH( $::Int, 'new', 0 )
     )
    };} if ( DISPATCH.new( $GLOBAL::Code_defined, "APPLY", $GLOBAL::_REGEX_RETURN_ )->{_value} ) { $GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", DISPATCH.new( $GLOBAL::_REGEX_RETURN_, "FETCH" ) ]; } 1 } ) ) } && do { $GLOBAL::_M = [ $GLOBAL::_M, 'to', pos() ]; 
    $GLOBAL::_M2 = $GLOBAL::_M }; } 
::DISPATCH(::DISPATCH($::KindaPerl6::Grammar,"HOW"),"add_method", ::DISPATCH( $::Str, "new", "sig_slurpy" ), ::DISPATCH( $::Method, "new", { code => sub { local $GLOBAL::_Class = shift; undef $GLOBAL::_M2; my ($str,$pos) = @_;$str = defined($str) ? $str : $_;local $_ = ( ref($str) ? DISPATCH.new( $str, "Str" )->{_value} : $str ); pos($_) = (ref $pos) ? ( $pos->{_value} ) : ( 0 + pos($_) );if ( _rule_sig_slurpy() ) { Match::from_global_data( $GLOBAL::_M2 ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; } else { $MATCH = $GLOBAL::MATCH = Match->new(); } @Match::Matches = (); return $MATCH; } } ), );     sub _rule_sig_multidimensional {
    local $GLOBAL::_M = [ $GLOBAL::_M, 'create', pos(), \$_ ]; 
    $GLOBAL::_M2 = $GLOBAL::_M; do{ my $_pos = pos(); ( ( /\G\@/g && do { {local $GLOBAL::_M = [ $GLOBAL::_M, "to", pos() ]; 
    Match::from_global_data( $GLOBAL::_M ); 
    $MATCH = $GLOBAL::MATCH = pop @Match::Matches; 
    @Match::Matches = (); 
    do {::DISPATCH_VAR( $GLOBAL::_REGEX_RETURN_, "STORE", ::DISPATCH( $::Int, 'new', 1 )
     )
    };} if ( DISPATCH.new( $GLOBAL::Code_defined, "APPLY", $GLOBAL::_REGEX_RETURN_ )->{_value} ) { $GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", DISPATCH.new( $GLOBAL::_REGEX_RETURN_, "FETCH" ) ]; } 1 } ) ) || ( ( ( pos() = $_pos ) || 1 ) && ( do { {local $GLOBAL::_M = [ $GLOBAL::_M, "to", pos() ]; 
    Match::from_global_data( $GLOBAL::_M ); 
    $MATCH = $GLOBAL::MATCH = pop @Match::Matches; 
    @Match::Matches = (); 
    do {::DISPATCH_VAR( $GLOBAL::_REGEX_RETURN_, "STORE", ::DISPATCH( $::Int, 'new', 0 )
     )
    };} if ( DISPATCH.new( $GLOBAL::Code_defined, "APPLY", $GLOBAL::_REGEX_RETURN_ )->{_value} ) { $GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", DISPATCH.new( $GLOBAL::_REGEX_RETURN_, "FETCH" ) ]; } 1 } ) ) } && do { $GLOBAL::_M = [ $GLOBAL::_M, 'to', pos() ]; 
    $GLOBAL::_M2 = $GLOBAL::_M }; } 
::DISPATCH(::DISPATCH($::KindaPerl6::Grammar,"HOW"),"add_method", ::DISPATCH( $::Str, "new", "sig_multidimensional" ), ::DISPATCH( $::Method, "new", { code => sub { local $GLOBAL::_Class = shift; undef $GLOBAL::_M2; my ($str,$pos) = @_;$str = defined($str) ? $str : $_;local $_ = ( ref($str) ? DISPATCH.new( $str, "Str" )->{_value} : $str ); pos($_) = (ref $pos) ? ( $pos->{_value} ) : ( 0 + pos($_) );if ( _rule_sig_multidimensional() ) { Match::from_global_data( $GLOBAL::_M2 ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; } else { $MATCH = $GLOBAL::MATCH = Match->new(); } @Match::Matches = (); return $MATCH; } } ), );     sub _rule_sig_rw {
    local $GLOBAL::_M = [ $GLOBAL::_M, 'create', pos(), \$_ ]; 
    $GLOBAL::_M2 = $GLOBAL::_M; do{ my $_pos = pos(); ( ( do { local $GLOBAL::_M; _rule_ws() } && /\Gis/g && do { local $GLOBAL::_M; _rule_ws() } && /\Grw/g && do { {local $GLOBAL::_M = [ $GLOBAL::_M, "to", pos() ]; 
    Match::from_global_data( $GLOBAL::_M ); 
    $MATCH = $GLOBAL::MATCH = pop @Match::Matches; 
    @Match::Matches = (); 
    do {::DISPATCH_VAR( $GLOBAL::_REGEX_RETURN_, "STORE", ::DISPATCH( $::Int, 'new', 1 )
     )
    };} if ( DISPATCH.new( $GLOBAL::Code_defined, "APPLY", $GLOBAL::_REGEX_RETURN_ )->{_value} ) { $GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", DISPATCH.new( $GLOBAL::_REGEX_RETURN_, "FETCH" ) ]; } 1 } ) ) || ( ( ( pos() = $_pos ) || 1 ) && ( do { {local $GLOBAL::_M = [ $GLOBAL::_M, "to", pos() ]; 
    Match::from_global_data( $GLOBAL::_M ); 
    $MATCH = $GLOBAL::MATCH = pop @Match::Matches; 
    @Match::Matches = (); 
    do {::DISPATCH_VAR( $GLOBAL::_REGEX_RETURN_, "STORE", ::DISPATCH( $::Int, 'new', 0 )
     )
    };} if ( DISPATCH.new( $GLOBAL::Code_defined, "APPLY", $GLOBAL::_REGEX_RETURN_ )->{_value} ) { $GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", DISPATCH.new( $GLOBAL::_REGEX_RETURN_, "FETCH" ) ]; } 1 } ) ) } && do { $GLOBAL::_M = [ $GLOBAL::_M, 'to', pos() ]; 
    $GLOBAL::_M2 = $GLOBAL::_M }; } 
::DISPATCH(::DISPATCH($::KindaPerl6::Grammar,"HOW"),"add_method", ::DISPATCH( $::Str, "new", "sig_rw" ), ::DISPATCH( $::Method, "new", { code => sub { local $GLOBAL::_Class = shift; undef $GLOBAL::_M2; my ($str,$pos) = @_;$str = defined($str) ? $str : $_;local $_ = ( ref($str) ? DISPATCH.new( $str, "Str" )->{_value} : $str ); pos($_) = (ref $pos) ? ( $pos->{_value} ) : ( 0 + pos($_) );if ( _rule_sig_rw() ) { Match::from_global_data( $GLOBAL::_M2 ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; } else { $MATCH = $GLOBAL::MATCH = Match->new(); } @Match::Matches = (); return $MATCH; } } ), );     sub _rule_sig_copy {
    local $GLOBAL::_M = [ $GLOBAL::_M, 'create', pos(), \$_ ]; 
    $GLOBAL::_M2 = $GLOBAL::_M; do{ my $_pos = pos(); ( ( do { local $GLOBAL::_M; _rule_ws() } && /\Gis/g && do { local $GLOBAL::_M; _rule_ws() } && /\Gcopy/g && do { {local $GLOBAL::_M = [ $GLOBAL::_M, "to", pos() ]; 
    Match::from_global_data( $GLOBAL::_M ); 
    $MATCH = $GLOBAL::MATCH = pop @Match::Matches; 
    @Match::Matches = (); 
    do {::DISPATCH_VAR( $GLOBAL::_REGEX_RETURN_, "STORE", ::DISPATCH( $::Int, 'new', 1 )
     )
    };} if ( DISPATCH.new( $GLOBAL::Code_defined, "APPLY", $GLOBAL::_REGEX_RETURN_ )->{_value} ) { $GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", DISPATCH.new( $GLOBAL::_REGEX_RETURN_, "FETCH" ) ]; } 1 } ) ) || ( ( ( pos() = $_pos ) || 1 ) && ( do { {local $GLOBAL::_M = [ $GLOBAL::_M, "to", pos() ]; 
    Match::from_global_data( $GLOBAL::_M ); 
    $MATCH = $GLOBAL::MATCH = pop @Match::Matches; 
    @Match::Matches = (); 
    do {::DISPATCH_VAR( $GLOBAL::_REGEX_RETURN_, "STORE", ::DISPATCH( $::Int, 'new', 0 )
     )
    };} if ( DISPATCH.new( $GLOBAL::Code_defined, "APPLY", $GLOBAL::_REGEX_RETURN_ )->{_value} ) { $GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", DISPATCH.new( $GLOBAL::_REGEX_RETURN_, "FETCH" ) ]; } 1 } ) ) } && do { $GLOBAL::_M = [ $GLOBAL::_M, 'to', pos() ]; 
    $GLOBAL::_M2 = $GLOBAL::_M }; } 
::DISPATCH(::DISPATCH($::KindaPerl6::Grammar,"HOW"),"add_method", ::DISPATCH( $::Str, "new", "sig_copy" ), ::DISPATCH( $::Method, "new", { code => sub { local $GLOBAL::_Class = shift; undef $GLOBAL::_M2; my ($str,$pos) = @_;$str = defined($str) ? $str : $_;local $_ = ( ref($str) ? DISPATCH.new( $str, "Str" )->{_value} : $str ); pos($_) = (ref $pos) ? ( $pos->{_value} ) : ( 0 + pos($_) );if ( _rule_sig_copy() ) { Match::from_global_data( $GLOBAL::_M2 ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; } else { $MATCH = $GLOBAL::MATCH = Match->new(); } @Match::Matches = (); return $MATCH; } } ), );     sub _rule_exp_sig_item {
    local $GLOBAL::_M = [ $GLOBAL::_M, 'create', pos(), \$_ ]; 
    $GLOBAL::_M2 = $GLOBAL::_M; do{ my $_pos = pos(); ( ( ( _rule_sig_type() && ( $GLOBAL::_M = [ $GLOBAL::_M2, "named_capture", "sig_type" ] ))  && ( _rule_sig_named_only() && ( $GLOBAL::_M = [ $GLOBAL::_M2, "named_capture", "sig_named_only" ] ))  && ( _rule_sig_slurpy() && ( $GLOBAL::_M = [ $GLOBAL::_M2, "named_capture", "sig_slurpy" ] ))  && ( _rule_sig_multidimensional() && ( $GLOBAL::_M = [ $GLOBAL::_M2, "named_capture", "sig_multidimensional" ] ))  && ( _rule_sigil() && ( $GLOBAL::_M = [ $GLOBAL::_M2, "named_capture", "sigil" ] ))  && ( _rule_ident() && ( $GLOBAL::_M = [ $GLOBAL::_M2, "named_capture", "ident" ] ))  && ( _rule_sig_optional() && ( $GLOBAL::_M = [ $GLOBAL::_M2, "named_capture", "sig_optional" ] ))  && ( _rule_sig_default_value() && ( $GLOBAL::_M = [ $GLOBAL::_M2, "named_capture", "sig_default_value" ] ))  && ( _rule_sig_rw() && ( $GLOBAL::_M = [ $GLOBAL::_M2, "named_capture", "sig_rw" ] ))  && ( _rule_sig_copy() && ( $GLOBAL::_M = [ $GLOBAL::_M2, "named_capture", "sig_copy" ] ))  && do { {local $GLOBAL::_M = [ $GLOBAL::_M, "to", pos() ]; 
    Match::from_global_data( $GLOBAL::_M ); 
    $MATCH = $GLOBAL::MATCH = pop @Match::Matches; 
    @Match::Matches = (); 
    do {::DISPATCH_VAR( $GLOBAL::_REGEX_RETURN_, "STORE", ::DISPATCH( $::Lit::SigArgument, 'new', ::DISPATCH( $::NamedArgument, 'new', { _argument_name_ => ::DISPATCH( $::Str, 'new', 'key' )
    , value => ::DISPATCH( $::Var, 'new', ::DISPATCH( $::NamedArgument, 'new', { _argument_name_ => ::DISPATCH( $::Str, 'new', 'sigil' )
    , value => ::DISPATCH(  ( $GLOBAL::Code_prefix_58__60__126__62_ = $GLOBAL::Code_prefix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", )  ) 
    , 'APPLY', ::DISPATCH( $MATCH, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'sigil' )
     )
     )
     } )
    , ::DISPATCH( $::NamedArgument, 'new', { _argument_name_ => ::DISPATCH( $::Str, 'new', 'twigil' )
    , value => ::DISPATCH( $::Str, 'new', '' )
     } )
    , ::DISPATCH( $::NamedArgument, 'new', { _argument_name_ => ::DISPATCH( $::Str, 'new', 'name' )
    , value => ::DISPATCH(  ( $GLOBAL::Code_prefix_58__60__126__62_ = $GLOBAL::Code_prefix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", )  ) 
    , 'APPLY', ::DISPATCH( $MATCH, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'ident' )
     )
     )
     } )
    , ::DISPATCH( $::NamedArgument, 'new', { _argument_name_ => ::DISPATCH( $::Str, 'new', 'namespace' )
    , value => ::DISPATCH( $::Array, 'new', { _array => [] }
     )
     } )
     )
     } )
    , ::DISPATCH( $::NamedArgument, 'new', { _argument_name_ => ::DISPATCH( $::Str, 'new', 'value' )
    , value => ::DISPATCH( ::DISPATCH(  ( $GLOBAL::Code_prefix_58__60__36__62_ = $GLOBAL::Code_prefix_58__60__36__62_ || ::DISPATCH( $::Routine, "new", )  ) 
    , 'APPLY', ::DISPATCH( $MATCH, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'sig_default_value' )
     )
     )
    , 'LOOKUP', ::DISPATCH( $::Str, 'new', 'default' )
     )
     } )
    , ::DISPATCH( $::NamedArgument, 'new', { _argument_name_ => ::DISPATCH( $::Str, 'new', 'type' )
    , value => ::DISPATCH(  ( $GLOBAL::Code_prefix_58__60__36__62_ = $GLOBAL::Code_prefix_58__60__36__62_ || ::DISPATCH( $::Routine, "new", )  ) 
    , 'APPLY', ::DISPATCH( $MATCH, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'sig_type' )
     )
     )
     } )
    , ::DISPATCH( $::NamedArgument, 'new', { _argument_name_ => ::DISPATCH( $::Str, 'new', 'has_default' )
    , value => ::DISPATCH( $::Val::Bit, 'new', ::DISPATCH( $::NamedArgument, 'new', { _argument_name_ => ::DISPATCH( $::Str, 'new', 'bit' )
    , value => ::DISPATCH( ::DISPATCH(  ( $GLOBAL::Code_prefix_58__60__36__62_ = $GLOBAL::Code_prefix_58__60__36__62_ || ::DISPATCH( $::Routine, "new", )  ) 
    , 'APPLY', ::DISPATCH( $MATCH, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'sig_default_value' )
     )
     )
    , 'LOOKUP', ::DISPATCH( $::Str, 'new', 'has_default' )
     )
     } )
     )
     } )
    , ::DISPATCH( $::NamedArgument, 'new', { _argument_name_ => ::DISPATCH( $::Str, 'new', 'is_named_only' )
    , value => ::DISPATCH( $::Val::Bit, 'new', ::DISPATCH( $::NamedArgument, 'new', { _argument_name_ => ::DISPATCH( $::Str, 'new', 'bit' )
    , value => ::DISPATCH(  ( $GLOBAL::Code_prefix_58__60__36__62_ = $GLOBAL::Code_prefix_58__60__36__62_ || ::DISPATCH( $::Routine, "new", )  ) 
    , 'APPLY', ::DISPATCH( $MATCH, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'sig_named_only' )
     )
     )
     } )
     )
     } )
    , ::DISPATCH( $::NamedArgument, 'new', { _argument_name_ => ::DISPATCH( $::Str, 'new', 'is_optional' )
    , value => ::DISPATCH( $::Val::Bit, 'new', ::DISPATCH( $::NamedArgument, 'new', { _argument_name_ => ::DISPATCH( $::Str, 'new', 'bit' )
    , value => ::DISPATCH(  ( $GLOBAL::Code_prefix_58__60__36__62_ = $GLOBAL::Code_prefix_58__60__36__62_ || ::DISPATCH( $::Routine, "new", )  ) 
    , 'APPLY', ::DISPATCH( $MATCH, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'sig_optional' )
     )
     )
     } )
     )
     } )
    , ::DISPATCH( $::NamedArgument, 'new', { _argument_name_ => ::DISPATCH( $::Str, 'new', 'is_slurpy' )
    , value => ::DISPATCH( $::Val::Bit, 'new', ::DISPATCH( $::NamedArgument, 'new', { _argument_name_ => ::DISPATCH( $::Str, 'new', 'bit' )
    , value => ::DISPATCH(  ( $GLOBAL::Code_prefix_58__60__36__62_ = $GLOBAL::Code_prefix_58__60__36__62_ || ::DISPATCH( $::Routine, "new", )  ) 
    , 'APPLY', ::DISPATCH( $MATCH, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'sig_slurpy' )
     )
     )
     } )
     )
     } )
    , ::DISPATCH( $::NamedArgument, 'new', { _argument_name_ => ::DISPATCH( $::Str, 'new', 'is_multidimensional' )
    , value => ::DISPATCH( $::Val::Bit, 'new', ::DISPATCH( $::NamedArgument, 'new', { _argument_name_ => ::DISPATCH( $::Str, 'new', 'bit' )
    , value => ::DISPATCH(  ( $GLOBAL::Code_prefix_58__60__36__62_ = $GLOBAL::Code_prefix_58__60__36__62_ || ::DISPATCH( $::Routine, "new", )  ) 
    , 'APPLY', ::DISPATCH( $MATCH, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'sig_multidimensional' )
     )
     )
     } )
     )
     } )
    , ::DISPATCH( $::NamedArgument, 'new', { _argument_name_ => ::DISPATCH( $::Str, 'new', 'is_rw' )
    , value => ::DISPATCH( $::Val::Bit, 'new', ::DISPATCH( $::NamedArgument, 'new', { _argument_name_ => ::DISPATCH( $::Str, 'new', 'bit' )
    , value => ::DISPATCH(  ( $GLOBAL::Code_prefix_58__60__36__62_ = $GLOBAL::Code_prefix_58__60__36__62_ || ::DISPATCH( $::Routine, "new", )  ) 
    , 'APPLY', ::DISPATCH( $MATCH, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'sig_rw' )
     )
     )
     } )
     )
     } )
    , ::DISPATCH( $::NamedArgument, 'new', { _argument_name_ => ::DISPATCH( $::Str, 'new', 'is_copy' )
    , value => ::DISPATCH( $::Val::Bit, 'new', ::DISPATCH( $::NamedArgument, 'new', { _argument_name_ => ::DISPATCH( $::Str, 'new', 'bit' )
    , value => ::DISPATCH(  ( $GLOBAL::Code_prefix_58__60__36__62_ = $GLOBAL::Code_prefix_58__60__36__62_ || ::DISPATCH( $::Routine, "new", )  ) 
    , 'APPLY', ::DISPATCH( $MATCH, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'sig_copy' )
     )
     )
     } )
     )
     } )
     )
     )
    };} if ( DISPATCH.new( $GLOBAL::Code_defined, "APPLY", $GLOBAL::_REGEX_RETURN_ )->{_value} ) { $GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", DISPATCH.new( $GLOBAL::_REGEX_RETURN_, "FETCH" ) ]; } 1 } ) ) } && do { $GLOBAL::_M = [ $GLOBAL::_M, 'to', pos() ]; 
    $GLOBAL::_M2 = $GLOBAL::_M }; } 
::DISPATCH(::DISPATCH($::KindaPerl6::Grammar,"HOW"),"add_method", ::DISPATCH( $::Str, "new", "exp_sig_item" ), ::DISPATCH( $::Method, "new", { code => sub { local $GLOBAL::_Class = shift; undef $GLOBAL::_M2; my ($str,$pos) = @_;$str = defined($str) ? $str : $_;local $_ = ( ref($str) ? DISPATCH.new( $str, "Str" )->{_value} : $str ); pos($_) = (ref $pos) ? ( $pos->{_value} ) : ( 0 + pos($_) );if ( _rule_exp_sig_item() ) { Match::from_global_data( $GLOBAL::_M2 ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; } else { $MATCH = $GLOBAL::MATCH = Match->new(); } @Match::Matches = (); return $MATCH; } } ), );     sub _rule_exp_sig_list {
    local $GLOBAL::_M = [ $GLOBAL::_M, 'create', pos(), \$_ ]; 
    $GLOBAL::_M2 = $GLOBAL::_M; do{ my $_pos = pos(); ( ( ( _rule_exp_sig_item() && ( $GLOBAL::_M = [ $GLOBAL::_M2, "named_capture", "exp_sig_item" ] ))  && do{ my $_pos = pos(); ( ( do { local $GLOBAL::_M; _rule_opt_ws() } && /\G\,/g && do { local $GLOBAL::_M; _rule_opt_ws() } && ( _rule_exp_sig_list() && ( $GLOBAL::_M = [ $GLOBAL::_M2, "named_capture", "exp_sig_list" ] ))  && do { {local $GLOBAL::_M = [ $GLOBAL::_M, "to", pos() ]; 
    Match::from_global_data( $GLOBAL::_M ); 
    $MATCH = $GLOBAL::MATCH = pop @Match::Matches; 
    @Match::Matches = (); 
    do {::DISPATCH_VAR( $GLOBAL::_REGEX_RETURN_, "STORE", ::DISPATCH( $::Array, 'new', { _array => [::DISPATCH(  ( $GLOBAL::Code_prefix_58__60__36__62_ = $GLOBAL::Code_prefix_58__60__36__62_ || ::DISPATCH( $::Routine, "new", )  ) 
    , 'APPLY', ::DISPATCH( $MATCH, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'exp_sig_item' )
     )
     )
    , ::DISPATCH( ::DISPATCH(  ( $GLOBAL::Code_prefix_58__60__36__62_ = $GLOBAL::Code_prefix_58__60__36__62_ || ::DISPATCH( $::Routine, "new", )  ) 
    , 'APPLY', ::DISPATCH( $MATCH, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'exp_sig_list' )
     )
     )
    , 'values',  )
    ] }
     )
     )
    };} if ( DISPATCH.new( $GLOBAL::Code_defined, "APPLY", $GLOBAL::_REGEX_RETURN_ )->{_value} ) { $GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", DISPATCH.new( $GLOBAL::_REGEX_RETURN_, "FETCH" ) ]; } 1 } ) ) || ( ( ( pos() = $_pos ) || 1 ) && ( do { local $GLOBAL::_M; _rule_opt_ws() } && do{ my $_pos = pos(); ( ( /\G\,/g && do { local $GLOBAL::_M; _rule_opt_ws() } ) ) || ( ( ( pos() = $_pos ) || 1 ) && ( /\G/g ) ) } && do { {local $GLOBAL::_M = [ $GLOBAL::_M, "to", pos() ]; 
    Match::from_global_data( $GLOBAL::_M ); 
    $MATCH = $GLOBAL::MATCH = pop @Match::Matches; 
    @Match::Matches = (); 
    do {::DISPATCH_VAR( $GLOBAL::_REGEX_RETURN_, "STORE", ::DISPATCH( $::Array, 'new', { _array => [::DISPATCH(  ( $GLOBAL::Code_prefix_58__60__36__62_ = $GLOBAL::Code_prefix_58__60__36__62_ || ::DISPATCH( $::Routine, "new", )  ) 
    , 'APPLY', ::DISPATCH( $MATCH, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'exp_sig_item' )
     )
     )
    ] }
     )
     )
    };} if ( DISPATCH.new( $GLOBAL::Code_defined, "APPLY", $GLOBAL::_REGEX_RETURN_ )->{_value} ) { $GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", DISPATCH.new( $GLOBAL::_REGEX_RETURN_, "FETCH" ) ]; } 1 } ) ) } ) ) || ( ( ( pos() = $_pos ) || 1 ) && ( do { {local $GLOBAL::_M = [ $GLOBAL::_M, "to", pos() ]; 
    Match::from_global_data( $GLOBAL::_M ); 
    $MATCH = $GLOBAL::MATCH = pop @Match::Matches; 
    @Match::Matches = (); 
    do {::DISPATCH_VAR( $GLOBAL::_REGEX_RETURN_, "STORE", ::DISPATCH( $::Array, 'new', { _array => [] }
     )
     )
    };} if ( DISPATCH.new( $GLOBAL::Code_defined, "APPLY", $GLOBAL::_REGEX_RETURN_ )->{_value} ) { $GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", DISPATCH.new( $GLOBAL::_REGEX_RETURN_, "FETCH" ) ]; } 1 } ) ) } && do { $GLOBAL::_M = [ $GLOBAL::_M, 'to', pos() ]; 
    $GLOBAL::_M2 = $GLOBAL::_M }; } 
::DISPATCH(::DISPATCH($::KindaPerl6::Grammar,"HOW"),"add_method", ::DISPATCH( $::Str, "new", "exp_sig_list" ), ::DISPATCH( $::Method, "new", { code => sub { local $GLOBAL::_Class = shift; undef $GLOBAL::_M2; my ($str,$pos) = @_;$str = defined($str) ? $str : $_;local $_ = ( ref($str) ? DISPATCH.new( $str, "Str" )->{_value} : $str ); pos($_) = (ref $pos) ? ( $pos->{_value} ) : ( 0 + pos($_) );if ( _rule_exp_sig_list() ) { Match::from_global_data( $GLOBAL::_M2 ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; } else { $MATCH = $GLOBAL::MATCH = Match->new(); } @Match::Matches = (); return $MATCH; } } ), );     sub _rule_sig {
    local $GLOBAL::_M = [ $GLOBAL::_M, 'create', pos(), \$_ ]; 
    $GLOBAL::_M2 = $GLOBAL::_M; do{ my $_pos = pos(); ( ( ( _rule_invocant() && ( $GLOBAL::_M = [ $GLOBAL::_M2, "named_capture", "invocant" ] ))  && do { local $GLOBAL::_M; _rule_opt_ws() } && ( _rule_exp_sig_list() && ( $GLOBAL::_M = [ $GLOBAL::_M2, "named_capture", "exp_sig_list" ] ))  && do { {local $GLOBAL::_M = [ $GLOBAL::_M, "to", pos() ]; 
    Match::from_global_data( $GLOBAL::_M ); 
    $MATCH = $GLOBAL::MATCH = pop @Match::Matches; 
    @Match::Matches = (); 
    do {::DISPATCH_VAR( $GLOBAL::_REGEX_RETURN_, "STORE", ::DISPATCH( $::Sig, 'new', ::DISPATCH( $::Pair, 'new', { key => ::DISPATCH( $::Str, 'new', 'invocant' )
    , value => ::DISPATCH(  ( $GLOBAL::Code_prefix_58__60__36__62_ = $GLOBAL::Code_prefix_58__60__36__62_ || ::DISPATCH( $::Routine, "new", )  ) 
    , 'APPLY', ::DISPATCH( $MATCH, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'invocant' )
     )
     )
     } )
    , ::DISPATCH( $::Pair, 'new', { key => ::DISPATCH( $::Str, 'new', 'positional' )
    , value => ::DISPATCH(  ( $GLOBAL::Code_prefix_58__60__36__62_ = $GLOBAL::Code_prefix_58__60__36__62_ || ::DISPATCH( $::Routine, "new", )  ) 
    , 'APPLY', ::DISPATCH( $MATCH, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'exp_sig_list' )
     )
     )
     } )
     )
     )
    };} if ( DISPATCH.new( $GLOBAL::Code_defined, "APPLY", $GLOBAL::_REGEX_RETURN_ )->{_value} ) { $GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", DISPATCH.new( $GLOBAL::_REGEX_RETURN_, "FETCH" ) ]; } 1 } ) ) } && do { $GLOBAL::_M = [ $GLOBAL::_M, 'to', pos() ]; 
    $GLOBAL::_M2 = $GLOBAL::_M }; } 
::DISPATCH(::DISPATCH($::KindaPerl6::Grammar,"HOW"),"add_method", ::DISPATCH( $::Str, "new", "sig" ), ::DISPATCH( $::Method, "new", { code => sub { local $GLOBAL::_Class = shift; undef $GLOBAL::_M2; my ($str,$pos) = @_;$str = defined($str) ? $str : $_;local $_ = ( ref($str) ? DISPATCH.new( $str, "Str" )->{_value} : $str ); pos($_) = (ref $pos) ? ( $pos->{_value} ) : ( 0 + pos($_) );if ( _rule_sig() ) { Match::from_global_data( $GLOBAL::_M2 ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; } else { $MATCH = $GLOBAL::MATCH = Match->new(); } @Match::Matches = (); return $MATCH; } } ), )}
; 1 }
