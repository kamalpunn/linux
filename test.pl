#!/usr/bin/perl

#my $x="aaacbbddddccc";
my $x="azzzakkkeeeddcbbffffwwwdddddddchhhccd";
my @y=split("",$x);
my %count=();

print "$x\n";
for(my $j=0;$j<scalar(@y);$j++) {
    if ( $j == 0 ) {
        $count{$y[$j]}++;
    } else {
        if ( $y[$j] eq $y[$j-1] ) {
            $count{$y[$j-1]}++;
            if ( $j == ( scalar(@y) - 1 ) ) {
                ( $count{$y[$j-1]} == 1 ) ? print $y[$j-1]:print $count{$y[$j-1]}.$y[$j-1];
            }
        } else {
            ( $count{$y[$j-1]} == 1 ) ? print $y[$j-1]:print $count{$y[$j-1]}.$y[$j-1];
            undef %count;
            $count{$y[$j]}++;
            if ( $j == ( scalar(@y) - 1 ) ) {
                ( $count{$y[$j]} == 1 ) ? print $y[$j]:print $count{$y[$j]}.$y[$j];
            }
        }
    }
}
print "\n";
