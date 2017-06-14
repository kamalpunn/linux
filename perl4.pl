#!/usr/bin/perl

$str=shift;
testBal($str) == 1 ? print "String Balanced\n": print "String not balanced\n";


sub testBal() {
    my($s)=shift;
    my ( $cnt_1,$cnt_2,$cnt_3,$cnt_4)=(0,0,0,0);
    my @chars=split(//,$s);
    for($i=0;$i<@chars;$i++) {
        if ( $chars[$i] eq "("  ) { $cnt_1++; }
        if ( $chars[$i] eq ")"  ) { $cnt_2++; }
        if ( $chars[$i] eq "["  ) { $cnt_3++; }
        if ( $chars[$i] eq "]"  ) { $cnt_4++; }
    }
    $cnt_1 == $cnt_2 && $cnt_3 == $cnt_4 ? return 1: return 0;
}
