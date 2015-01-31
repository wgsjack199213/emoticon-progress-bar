#!/usr/bin/perl

use strict;
use warnings;

use Time::HiRes qw(usleep nanosleep);
BEGIN { $| = 1 }

my $init_me =       "（~°口°）~";
my $next_me =       "（╯°口°）╯";
my $init_table =    "┬─┬";
my $next_table =    "┴─┴";
my $init_you =      "～(￣▽ ￣～)";
my $hit_you =       "  (￣#)３￣)";

for my $i (0..20) {
    my $me      = ($i == 0 ? $init_me : $next_me);
    my $table   = ($i == 0 ? $init_table : $next_table);
    my $you     = ($i < 20 ? $init_you : $hit_you);
    my $end     = ' ' . $i * 5 . '%' . ($i < 20 ? "\r" : "\n");
    print $me, ' ' x $i, $table, ' ' x (20 - $i), $you, $end;
    usleep(100000);
}

print "Complete!\n";

