#!/bin/sh
TMPFILE01=/tmp/dfile01$$
TMPFILE02=/tmp/dfile02$$
sed -e 's/　NEW　/;/' data_orig.txt > $TMPFILE01
sed -e 's/　/;/g' $TMPFILE01 > $TMPFILE02
sed -e 's/ – /;/' $TMPFILE02 > $TMPFILE01
sed -e 's/, from /;/' $TMPFILE01 > $TMPFILE02
sed -e 1d $TMPFILE02 > $TMPFILE01
echo 'Rank;Year;Artist;Song;Album' | cat - $TMPFILE01
