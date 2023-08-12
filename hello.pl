#!/usr/bin/perl
use warnings;

# if you're using "strict", then you have to define variables with my <my-variable>
use strict;
my @lines;

@lines = `perldoc -u -f cos`; # "@" is an array declaration
foreach (@lines) {
    s/\w<(.+?)>/\U$1/g;
    print;
}

