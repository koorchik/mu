use Test; plan 3;

# L<S06/"The return function">

{
    sub f { return :x<1> }
    sub g ($x) { $x }

    my $x := *f();  # binds 1 to $x, via a named argument
    is( g(*f()), 1, "prints 1, via a named argument");
}

{
  # return two positional Pair objects
  sub t2  { return( (:x<1>), (:y<2>) ) }
  my ($rv1,$rv2);
  $rv1,$rv2 := *t2();
  is($rv1, Pair, "returned Pair object 1");  
  is($rv2, Pair, "returned Pair object 2");  
}

