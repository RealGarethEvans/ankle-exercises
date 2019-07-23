#!/usr/bin/perl
use strict;
use MIME::Base64;

my @directions = (
  'back-left',
  'back-right',
  'back',
  'forward-left',
  'forward-right',
  'forward',
  'left',
  'right'
);

for my $direction(@directions){
    open my $infile, '<', $direction . '.txt';
    open my $outfile, '>', $direction . '.ogg';
    while(my $line = <$infile>){
        chomp $line;
        next if $line eq '';
        next if $line eq '{';
        next if $line eq '}';
        $line =~ s/.+"audioContent": "//;
        $line =~ s/"$//;
        print $outfile decode_base64($line);
    }
    close $infile;
    close $outfile;
}