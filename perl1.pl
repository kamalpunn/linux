#!/usr/bin/perl
use Data::Dumper;
use strict;
if ( ++$#ARGV != 1 ) {
    print "Usage: perl1.pl \"argument\"\n";
    exit;
}
my @words=split(/ +/,shift);
our $chars={};
# finding chars
for(my $i=0;$i<@words;$i++) {
    findChars($chars,$words[$i]);
}
printHist($chars);

sub printHist() {
    my $href=shift;
    foreach my $i ( sort { $href->{$b} cmp $href->{$a} } keys $href ) {
        print "$i: ";
        for(my $j=0;$j<$href->{$i};$j++) {
            $j == $href->{$i} -1  ? print "#":print "# ";
        }
        print "\n";
    }
}

sub findChars() {
    my($href,$word)=@_;
    my @c=split(//,$word);
    for(my $j=0;$j<@c;$j++) {
        $href->{$c[$j]}++;
    }
}
