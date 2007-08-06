=begin pod

=head1 NAME

Sys::Statistics::Linux::NetStats - Collect linux net statistics.

=head1 SYNOPSIS

   use Sys::Statistics::Linux::NetStats;

   my $lxs = Sys::Statistics::Linux::NetStats.new;
   $lxs.init;
   sleep 1;
   my %stats = $lxs.get;

=head1 DESCRIPTION

Sys::Statistics::Linux::NetStats gathers net statistics from the virtual F</proc> filesystem (procfs).

For more informations read the documentation of the front-end module L<Sys::Statistics::Linux>.

=head1 NET STATISTICS

Generated by F</proc/net/dev>.

   rxbyt    -  Number of bytes received per second.
   rxpcks   -  Number of packets received per second.
   rxerrs   -  Number of errors that happend while received packets per second.
   rxdrop   -  Number of packets that were dropped per second.
   rxfifo   -  Number of FIFO overruns that happend on received packets per second.
   rxframe  -  Number of carrier errors that happend on received packets per second.
   rxcompr  -  Number of compressed packets received per second.
   rxmulti  -  Number of multicast packets received per second.
   txbyt    -  Number of bytes transmitted per second.
   txpcks   -  Number of packets transmitted per second.
   txerrs   -  Number of errors that happend while transmitting packets per second.
   txdrop   -  Number of packets that were dropped per second.
   txfifo   -  Number of FIFO overruns that happend on transmitted packets per second.
   txcolls  -  Number of collisions that were detected per second.
   txcarr   -  Number of carrier errors that happend on transmitted packets per second.
   txcompr  -  Number of compressed packets transmitted per second.
   ttpcks   -  Number of total packets (received + transmitted) per second.
   ttbyt    -  Number of total bytes (received + transmitted) per second.

=head1 METHODS

=head2 new()

Call C<new()> to create a new object.

   my $lxs = new Sys::Statistics::Linux::NetStats;

=head2 init()

Call C<init()> to initialize the statistics.

   $lxs.init;

=head2 get()

Call C<get()> to get the statistics. C<get()> returns the statistics as a hash reference.

   my %stats = $lxs.get;

=head1 EXAMPLES

    my $lxs = Sys::Statistics::Linux::NetStats.new;
    $lxs.init;
    my $header = 0;

    while ( 1 ) {
        sleep(1);
        my %stats = $lxs.get;
        my $time  = localtime();

        if $header == 0 {
            $header = 20;
            print  ' ' x 20;
            printf "%-6s%10s%10s%10s%10s%10s%10s%10s%10s%10s%10s%10s%10s%10s%10s%10s%10s%10s%10s\n", <
               dev rxbyt rxpcks rxerrs rxdrop rxfifo rxframe rxcompr rxmulti txbyt
               txpcks txerrs txdrop txfifo txcolls txcarr txcompr ttpcks ttbyt >;
        }

        for %stats.keys.sort -> $dev {
            my %cstat := %stats{$dev};
            printf "%04d-%02d-%02d %02d:%02d:%02d %-6s%10s%10s%10s%10s%10s%10s%10s%10s%10s%10s%10s%10s%10s%10s%10s%10s%10s%10s\n",
                   $time.<year month day hour min sec>, $dev,
                   %cstat<rxbyt rxpcks rxerrs rxdrop rxfifo rxframe rxcompr rxmulti txbyt
                          txpcks txerrs txdrop txfifo txcolls txcarr txcompr ttpcks ttbyt>;
        }

        $header--;
    }

=head1 EXPORTS

No exports.

=head1 SEE ALSO

B<proc(5)>

=head1 REPORTING BUGS

Please report all bugs to <jschulz.cpan(at)bloonix.de>.

=head1 AUTHOR

Jonny Schulz <jschulz.cpan(at)bloonix.de>.

=head1 COPYRIGHT

Copyright (c) 2006, 2007 by Jonny Schulz. All rights reserved.

This program is free software; you can redistribute it and/or modify it under the same terms as Perl itself.

=end pod

#package Sys::Statistics::Linux::NetStats;
#our $VERSION = '0.09';

class Sys::Statistics::Linux::NetStats-0.001;

use v6-alpha;

#use strict;
#use warnings;
#use Carp qw(croak);

sub croak (*@m) { die @m } # waiting for Carp::croak

#sub new {
#   my $class = shift;
#   my %self = (
#      files => {
#         netstats => '/proc/net/dev',
#         uptime => '/proc/uptime',
#      },
#   );
#   return bless \%self, $class;
#}

has Hash $.files = {};
has Hash $.inits = {};
has Hash $.stats = {};
has Hash $.uptime;

submethod BUILD () {
    $.files<netstats> = '/proc/net/dev';
    $.files<uptime>   = '/proc/uptime';
}

#sub init {
#   my $self = shift;
#   $self->{uptime} = $self->_uptime;
#   $self->{init} = $self->_load;
#}

method init () {
    self.uptime = self.uptime();
    self.inits = self.load();
}

#sub get {
#   my $self  = shift;
#   my $class = ref $self;
#
#   croak "$class: there are no initial statistics defined"
#      unless exists $self->{init};
#
#   $self->{stats} = $self->_load;
#   $self->_deltas;
#   return $self->{stats};
#}

method get () {
    unless self.inits.defined {
        croak("there are no initial statistics defined");
    }
    self.stats = self.load;
    self.deltas();
    return self.stats;
}

#
# private stuff
#

#sub _load {
#   my $self  = shift;
#   my $class = ref $self;
#   my $file  = $self->{files};
#   my %stats = ();
#
#   open my $fh, '<', $file->{netstats} or croak "$class: unable to open $file->{netstats} ($!)";
#
#   while (my $line = <$fh>) {
#      next unless $line =~ /^\s*(\w+):\s*(.*)/;
#      @{$stats{$1}}{qw(
#         rxbyt rxpcks rxerrs rxdrop rxfifo rxframe rxcompr rxmulti
#         txbyt txpcks txerrs txdrop txfifo txcolls txcarr txcompr
#      )} = split /\s+/, $2;
#      $stats{$1}{ttbyt} = $stats{$1}{rxbyt} + $stats{$1}{txbyt};
#      $stats{$1}{ttpcks} = $stats{$1}{rxpcks} + $stats{$1}{txpcks};
#   }
#
#   close($fh);
#   return \%stats;
#}

my method load () {
    my $netstats = self.files<netstats>;
    my %stats;

    my $netfh = open($netstats, :r) or croak("unable to open $netstats: $!");

    for =$netfh -> $line {
        next unless $line ~~ /^\s*(\w+)\:\s*(.*)/;
        %stats{$0}<
            rxbyt rxpcks rxerrs rxdrop rxfifo rxframe rxcompr rxmulti
            txbyt txpcks txerrs txdrop txfifo txcolls txcarr txcompr
        > = (~$1).comb;
       %stats{$0}<ttbyt>  = %stats{$0}<rxbyt> + %stats{$0}<txbyt>;
       %stats{$0}<ttpcks> = %stats{$0}<rxpcks> + %stats{$0}<txpcks>;
    }

    $netfh.close;
    return %stats;
}

#sub _deltas {
#   my $self   = shift;
#   my $class  = ref $self;
#   my $istat  = $self->{init};
#   my $lstat  = $self->{stats};
#   my $uptime = $self->_uptime;
#   my $delta  = sprintf('%.2f', $uptime - $self->{uptime});
#   $self->{uptime} = $uptime;
#
#   foreach my $dev (keys %{$lstat}) {
#      unless (exists $istat->{$dev}) {
#         delete $lstat->{$dev};
#         next;
#      }
#
#      my $idev = $istat->{$dev};
#      my $ldev = $lstat->{$dev};
#
#      while (my ($k, $v) = each %{$ldev}) {
#         croak "$class: different keys in statistics"
#            unless defined $idev->{$k};
#         croak "$class: statistic '$k' isn't a number"
#            unless $v =~ /^\d+$/ && $ldev->{$k} =~ /^\d+$/;
#
#         $ldev->{$k} =
#            $ldev->{$k} == $idev->{$k}
#               ? sprintf('%.2f', 0)
#               : $delta > 0
#                  ? sprintf('%.2f', ($ldev->{$k} - $idev->{$k}) / $delta)
#                  : sprintf('%.2f', $ldev->{$k} - $idev->{$k});
#
#
#         $idev->{$k}  = $v;
#      }
#   }
#}

my method deltas () {
    my %inits   := self.inits;
    my %stats   := self.stats;
    my $uptime   = self.uptime();
    my $delta    = sprintf('%.2f', $uptime - self.<uptime>);
    self.uptime  = $uptime;

    for %stats.kv -> $dev, %sdev {
        unless %inits.exists($dev) {
            %stats.delete($dev);
            next;
        }

        my %idev = %inits{$dev};

        for %sdev.kv -> $k, $v {
            next if $k ~~ /^major$|^minor$/;
            unless %idev.exists($k) {
                croak("init key '$k' doesn't exists");
            }
            if $v == %idev{$k} {
                %sdev{$k} = 0.00;
            } elsif $delta > 0 { 
                %sdev{$k} = sprintf('%.2f', ($v - %idev{$k}) / $delta);
            } else {
                %sdev{$k} = sprintf('%.2f', $v - %idev{$k});
            }
            %idev{$k} = $v;
        }
    }
}

#sub _uptime {
#   my $self  = shift;
#   my $class = ref $self;
#   my $file  = $self->{files};
#   open my $fh, '<', $file->{uptime} or croak "$class: unable to open $file->{uptime} ($!)";
#   my ($up, $idle) = split /\s+/, <$fh>;
#   close($fh);
#   return $up;
#}

1;
