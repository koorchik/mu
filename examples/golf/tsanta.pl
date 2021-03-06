# Pugs p6 version of tsanta.pl.
# This is a simple translation of p5 tsanta.pl to p6.
# See comments in tsanta.pl for more information.

use v6;

sub nonce () { return (".$*PID." ~ (^1000).pick) }
my $intmp  = 'insanta'  ~ nonce();
my $outtmp = 'outsanta' ~ nonce();

# XXX: would like to use 'pugs' in normal use, './pugs' when run
# from 'make test'.
my $PUGS = 'pugs';

sub usage {
    print
"usage: $PUGS tsanta.pl
   or: $PUGS tsanta.pl pugscmd head.pl tail.pl rev.pl mid.pl wc.pl
";
    exit(1);
}

sub length (Str $s) returns Int { +split("", $s) }

sub golf_score (Str $script) returns Int {
    my $fh = open($script) orelse die("open '$script' failed: $!");
    my $golf = 0;
    my $dollar_dot = 0;    # Note: $. aka $fh.linenum() not implemented yet
    for $fh.lines  -> $line {
        ++$dollar_dot;
        $golf += length($line) - 1
            unless $dollar_dot==1 && $line.index("#!") == 0;
    }
    $fh.close() orelse die("close '$script' failed: $!");
    return $golf;
}

sub print_golf_score (*@scr) {
    my $tot = 0;
    for @scr -> $s { $tot += golf_score($s) }
    say("You shot a round of $tot strokes.");
}

sub build_file (Str $fname, Str $data) {
    my $fh = open($fname, :w) orelse die("open '$fname' failed: $!");
    $fh.print($data) orelse die("print '$fname' failed: $!");
    $fh.close() orelse die("close '$fname' failed: $!");
}

sub check_one (Str $scr, Str $label, Str $data, Str $exp) {
    build_file($intmp, $data);
    my $cmd = "$PUGS $scr $intmp >$outtmp";
    print("$label: running: '$cmd'...");
    # my $out = `$cmd`;
    run($cmd) orelse die("run '$cmd' failed: $!");
    # XXX: get return code. how? $!? (I think $? is obsolete in p6).
    my $rc = 0;
    my $out = slurp($outtmp) orelse die("slurp '$outtmp' failed: $!");
    # my $rc = $? >> 8;
    say("done (rc=$rc)");
    if ($out ne $exp) {
        $*ERR.print("Expected:\n$exp");
        $*ERR.print("Got:\n$out");
        die("Oops, you failed.\n");
    }
}

# -----------------------------------------------------

my $file1 =
"1st line
";

my $file2 =
"1st line
2nd line
";

my $file3 =
"1st line
2nd line
3rd line
";

my $file4 =
"1st line
2nd line
3rd line
4th line
";

my $file12 =
"1st line
2nd line
3rd line
4th line
5th line
6th line
7th line
8th line
9th line
10th line
11th line
12th line
";

my $file21 =
"1st line
2nd line
3rd line
4th line
5th line
6th line
7th line
8th line
9th line
10th line
11th line
12th line









";

# -----------------------------------------------------

sub check_head (Str $scr) {
    my @tt = (
       'file1',  $file1,  "1st line\n",
       'file2',  $file2,  "1st line\n2nd line\n",
       'file3',  $file3,  "1st line\n2nd line\n3rd line\n",
       'file12', $file12,
       "1st line\n2nd line\n3rd line\n4th line\n5th line\n"~
       "6th line\n7th line\n8th line\n9th line\n10th line\n"
    );
    for @tt -> $f0, $f1, $f2 { check_one($scr, $f0, $f1, $f2) }
}

sub check_tail (Str $scr) {
    my @tt = (
       'file1',  $file1,  "1st line\n",
       'file2',  $file2,  "1st line\n2nd line\n",
       'file3',  $file3,  "1st line\n2nd line\n3rd line\n",
       'file12', $file12,
       "3rd line\n4th line\n5th line\n6th line\n7th line\n"~
       "8th line\n9th line\n10th line\n11th line\n12th line\n",
       'file21', $file21, "12th line\n\n\n\n\n\n\n\n\n\n"
    );
    for @tt -> $f0, $f1, $f2 { check_one($scr, $f0, $f1, $f2) }
}

sub check_rev (Str $scr) {
    my @tt = (
       'file1',  $file1,  "1st line\n",
       'file2',  $file2,  "2nd line\n1st line\n",
       'file3',  $file3,  "3rd line\n2nd line\n1st line\n",
       'file21', $file21,
       "\n\n\n\n\n\n\n\n\n12th line\n11th line\n10th line\n"~
       "9th line\n8th line\n7th line\n6th line\n5th line\n"~
       "4th line\n3rd line\n2nd line\n1st line\n"
    );
    for @tt -> $f0, $f1, $f2 { check_one($scr, $f0, $f1, $f2) }
}

sub check_mid (Str $scr) {
    my @tt = (
       'file1',  $file1,  "1st line\n",
       'file2',  $file2,  "1st line\n2nd line\n",
       'file3',  $file3,  "2nd line\n",
       'file4',  $file4,  "2nd line\n3rd line\n",
       'file12', $file12, "6th line\n7th line\n",
       'file21', $file21, "11th line\n"
    );
    for @tt -> $f0, $f1, $f2 { check_one($scr, $f0, $f1, $f2) }
}

sub check_wc (Str $scr) {
    my @tt = (
       'file1',  $file1,  "0000000001\n",
       'file2',  $file2,  "0000000002\n",
       'file3',  $file3,  "0000000003\n",
       'file4',  $file4,  "0000000004\n",
       'file12', $file12, "0000000012\n",
       'file21', $file21, "0000000021\n"
    );
    for @tt -> $f0, $f1, $f2 { check_one($scr, $f0, $f1, $f2) }
}

# -----------------------------------------------------

my $head = 'head.pl';
my $tail = 'tail.pl';
my $rev  = 'rev.pl';
my $mid  = 'mid.pl';
my $wc   = 'wc.pl';
if @*ARGS {
    +@*ARGS == 6 or usage();
    $PUGS = @*ARGS.shift();
    $head = @*ARGS.shift();
    $tail = @*ARGS.shift();
    $rev  = @*ARGS.shift();
    $mid  = @*ARGS.shift();
    $wc   = @*ARGS.shift();
}
$head ~~ :f or die("error: file '$head' not found");
$tail ~~ :f or die("error: file '$tail' not found");
$rev  ~~ :f or die("error: file '$rev' not found");
$mid  ~~ :f or die("error: file '$mid' not found");
$wc   ~~ :f or die("error: file '$wc' not found");
print_golf_score($head, $tail, $rev, $mid, $wc);
check_head($head);
check_tail($tail);
check_rev($rev);
check_mid($mid);
check_wc($wc);
print_golf_score($head, $tail, $rev, $mid, $wc);
say("Hooray, you passed.");

END {
    defined($intmp)  and unlink($intmp);
    defined($outtmp) and unlink($outtmp);
}
