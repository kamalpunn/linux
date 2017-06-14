#!/usr/bin/perl
use Data::Dumper;
my %last_name=("Mary" => "Li",
               "James" => "O'Day",
               "Thomas" => "Miller",
               "Willam" => "Garcia",
               "Elizabeth" => "Davis");

foreach my $name ( sort { 
                           length($last_name{$a}) <=> length($last_name{$b}) 
                           ||
                           $a cmp $b 
                        } keys %last_name ) {
    print $name," ".$last_name{$name}."\n";
}
