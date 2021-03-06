#!/usr/bin/env perl

use strict;
use warnings;

my $infile = shift || 'lib/Pugs/Grammar/Rule2.pmc';
open my $in, $infile or
    die "Can't open $infile for reading: $!";
my ($start, $comment_next);
while (<$in>) {
    if (/^\s*our \%rule_terms;\s*$/) {
        $start = 1;
        my $time = localtime;
        print <<_EOC_;
# !!! DO NOT EDIT !!!
# This file was generated by $0 at $time

package Pugs::Grammar::Rule;
use utf8;
no strict 'refs';
use Pugs::Runtime::Match;
use Pugs::Runtime::Regex;

_EOC_
        print;
        next;
    }
    next unless $start;
    if (s/\bData::Bind\b/# $&/g) {
        $comment_next = 1;
    } elsif ($comment_next) {
        $_ = "# $_";
        $comment_next = 0;
    }
    print;
}
close $in;

