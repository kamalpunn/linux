#!/usr/bin/perl
open("fh","<data")||die "can't open file\n";
open("out",">data1")||die "can't open file\n";
while ( $ch=getc(fh) ) {
    if ( $ch eq "/" ) {
         $nextch=getc(fh);
         if ( $nextch eq "/" ) {
            $nextch1=getc(fh);
            if ( $nextch1 eq " " ) {
                seek(fh,-3,1);
                $ch2=getc(fh);
                while($ch2 ne "\n") {
                    $ch2=getc(fh);
                }
                print out $ch2;
            }
         }
    }
    else {
        print out $ch;
    }
}
close(fh);
close(out);
