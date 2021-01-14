#!/bin/bash
# calculate disk usage and report per user
TEMPY=`mktemp -t tmp.XXX666`
du -s /home/* | grep -v lost | sed 's/\/home\///' | sort -g -r › /tmp/123
TOTAL=`du -s /home | gawk '{print $1}'`
cat /tmp/123 | gawk -v n="$TOTAL" '
BEGIN {
print "Total Disk Usage by User";
print "User\tSpace\tPercent"
}
{
printf "%s\t%d\t%6.2f%\n", $2, $1, ($1/n)*100
}
END {
print "--------------------------";
printf "Total\t%d\n", n
}'
#rm -f $TEMP
