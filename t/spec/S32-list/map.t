use v6;
use Test;
plan 89;

# L<S32::Containers/"List"/"=item map">

=begin pod

 built-in map tests

=end pod


my @list = (1 .. 5);
#?rakudo skip 'named args'
{
    my @result = map( { $_ * 2 }, :values(@list) );
    is(+@result, 5, 'we got a list back');
    is(@result[0], 2, 'got the value we expected');
    is(@result[1], 4, 'got the value we expected');
    is(@result[2], 6, 'got the value we expected');
    is(@result[3], 8, 'got the value we expected');
    is(@result[4], 10, 'got the value we expected');
}

{
    my @result = map { $_ * 2 }, @list;
    is(+@result, 5, 'we got a list back');
    is(@result[0], 2, 'got the value we expected');
    is(@result[1], 4, 'got the value we expected');
    is(@result[2], 6, 'got the value we expected');
    is(@result[3], 8, 'got the value we expected');
    is(@result[4], 10, 'got the value we expected');
}

#?rakudo skip "adverbial block"
{
    my @result = @list.map():{ $_ * 2 };
    is(+@result, 5, 'we got a list back');
    is(@result[0], 2, 'got the value we expected');
    is(@result[1], 4, 'got the value we expected');
    is(@result[2], 6, 'got the value we expected');
    is(@result[3], 8, 'got the value we expected');
    is(@result[4], 10, 'got the value we expected');
}

{
    my @result = @list.map: { $_ * 2 };
    is(+@result, 5, 'we got a list back');
    is(@result[0], 2, 'got the value we expected');
    is(@result[1], 4, 'got the value we expected');
    is(@result[2], 6, 'got the value we expected');
    is(@result[3], 8, 'got the value we expected');
    is(@result[4], 10, 'got the value we expected');
}

#?rakudo skip "closure as non-final argument"
{
    my @result = map { $_ * 2 }: @list;
    is(+@result, 5, 'we got a list back');
    is(@result[0], 2, 'got the value we expected');
    is(@result[1], 4, 'got the value we expected');
    is(@result[2], 6, 'got the value we expected');
    is(@result[3], 8, 'got the value we expected');
    is(@result[4], 10, 'got the value we expected');
}

# Testing map that returns an array
{
    my @result = map { ($_, $_ * 2) }, @list;
    is(+@result, 10, 'we got a list back');
    is(@result[0], 1, 'got the value we expected');
    is(@result[1], 2, 'got the value we expected');
    is(@result[2], 2, 'got the value we expected');
    is(@result[3], 4, 'got the value we expected');
    is(@result[4], 3, 'got the value we expected');
    is(@result[5], 6, 'got the value we expected');
    is(@result[6], 4, 'got the value we expected');
    is(@result[7], 8, 'got the value we expected');
    is(@result[8], 5, 'got the value we expected');
    is(@result[9], 10, 'got the value we expected');
}

# Testing multiple statements in the closure
{
    my @result = map {
         my $fullpath = "fish/$_";
         $fullpath;
    }, @list;
    is(+@result, 5, 'we got a list back');
    is(@result[0], "fish/1", 'got the value we expected');
    is(@result[1], "fish/2", 'got the value we expected');
    is(@result[2], "fish/3", 'got the value we expected');
    is(@result[3], "fish/4", 'got the value we expected');
    is(@result[4], "fish/5", 'got the value we expected');
}

{
    my @list = 1 .. 5;
    is +(map {;$_ => 1 }, @list), 5,
            'heuristic for block - looks like a closure';

    my %result = map {; $_ => ($_*2) }, @list;
    isa_ok(%result, Hash);
    is(%result<1>, 2,  'got the value we expected');
    is(%result<2>, 4,  'got the value we expected');
    is(%result<3>, 6,  'got the value we expected');
    is(%result<4>, 8,  'got the value we expected');
    is(%result<5>, 10, 'got the value we expected');
}

# map with n-ary functions
#?rakudo skip "adverbial block"
{
  is ~(1,2,3,4).map:{ $^a + $^b             }, "3 7", "map() works with 2-ary functions";
  is ~(1,2,3,4).map:{ $^a + $^b + $^c       }, "6 4", "map() works with 3-ary functions";
  is ~(1,2,3,4).map:{ $^a + $^b + $^c + $^d }, "10",  "map() works with 4-ary functions";
  is ~(1,2,3,4).map:{ $^a+$^b+$^c+$^d+$^e   }, "10",  "map() works with 5-ary functions";
}

{
  #?pugs 2 todo 'bug'
  is(42.map({$_}),    42,       "method form of map works on numbers");
  is('str'.map({$_}), 'str',    "method form of map works on strings");
}

=begin pod

Test that a constant list can have C<map> applied to it.

  ("foo","bar").map: { $_.substr(1,1) }

should be equivalent to

  my @val = ("foo","bar");
  @val = map { substr($_,1,1) }, @val;

=end pod

{
  my @expected = ("foo","bar");
  @expected = map { substr($_,1,1) }, @expected;

  is((("foo","bar").map: { $_.substr(1,1) }), @expected, "map of constant list works");
}


{
  my @a = (1, 2, 3);
  # XXX is hash { ... } legal?
  my @b = map { hash {"v"=>$_, "d" => $_*2} }, @a;
  is(+@b, 6, "should be 6 elements (list context)");

  my @c = map { {"v"=>$_, "d" => $_*2} }, @a;
#?pugs todo 'unimpl'
  is(+@c, 3, "should be 3 elements (3 hashrefs)");
}

# Map with mutating block
# L<S02/Names/"$_, $!, and $/ are context<rw> by default">

{
  my @array = <a b c d>;
  is ~(try { @array.map: { $_ ~= "c"; $_ ~ "d" } }), "acd bcd ccd dcd",
    'mutating $_ in map works (1)';
  is ~@array, "ac bc cc dc",
    'mutating $_ in map works (2)';
}

sub dbl ( Int  $val ) { 2*$val };
is( ~((1..3).map: { 2*$_ }),'2 4 6','intern method in map');
is( ~((1..3).map: { dbl( $_ ) }),'2 4 6','extern method in map');


# map with empty lists in the block
# Test was primarily aimed at PIL2JS, which did not pass this test (fixed now).
{
  my @array  = <a b c d>;
  my @result = map { (), }, @array;

  is +@result, 0, "map works with the map body returning an empty list";
}

{
  my @array  = <a b c d>;
  my @empty  = ();
  my @result = map { @empty }, @array;

  is +@result, 0, "map works with the map body returning an empty array";
}

{
  my @array  = <a b c d>;
  my @result = map { [] }, @array;

  is +@result, 4, "map works with the map body returning an empty arrayref";
}

#?pugs todo 'bug'
{
  my @array  = <a b c d>;
  my $empty  = [];
  my @result = map { $empty }, @array;

  is +@result, 4, "map works with the map body returning an empty arrayref variable";
}

{
  my @array  = <a b c d>;
  my @result = map { undef }, @array;

  is +@result, 4, "map works with the map body returning undef";
}

{
  my @array  = <a b c d>;
  my $undef  = undef;
  my @result = map { $undef }, @array;

  is +@result, 4, "map works with the map body returning an undefined variable";
}

{
  my @array  = <a b c d>;
  my @result = map { () }, @array;

  is +@result, 0, "map works with the map body returning ()";
}

# test map with a block that takes more than one parameter
{
    my @a=(1,4,2,5,3,6);
    my @ret=map -> $a,$b {$a+$b}, @a;

    is(@ret.elems,3,'map took 2 elements at a time');
    is(@ret[0],5,'first element ok');
    is(@ret[1],7,'second element ok');
    is(@ret[2],9,'third element ok');

}

# map shouldn't flatten array objects
# used to be a pugs regression
{
    my @foo = [1, 2, 3].map: { [100+$_, 200+$_] };
    is +@foo,    3,         "map should't flatten our arrayref (1)";
    is +@foo[0], 2,         "map should't flatten our arrayref (2)";
    is ~@foo[0], "101 201", "map should't flatten our arrayref (3)";
}

# .thing inside map blocks should still default to $_
# used to be a pugs regression
{
    is ~((1,2,3).map: { int($_) }), "1 2 3", "dependency for following test (1)";
    $_ = 4; is .int, 4,                   "dependency for following test (2)";
    is ~((1,2,3).map: { .int }),    "1 2 3", 'int() should default to $_ inside map, too';

    is ~(({1},{2},{3}).map: { $_; $_() }), "1 2 3", 'lone $_ in map should work (1)';
    is ~(({1},{2},{3}).map: { $_() }),     "1 2 3", 'lone $_ in map should work (2)';
    is ~(({1},{2},{3}).map: { .() }),     "1 2 3", 'lone .() in map should work (2)';
}

{
    #?rakudo todo 'next in map'
    is (1..4).map({ next if $_ % 2; 2 * $_ }).join('|'), 
       '2|4|8', 'next in map works';
    is (1..10).map({ last if $_ % 5 == 0; 2 * $_}).join(' '),
       '2 4 6 8', 'last in map works';
}

# vim: ft=perl6
