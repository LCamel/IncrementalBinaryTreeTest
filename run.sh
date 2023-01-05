#!/bin/sh

N=$1

rm -f run.txt
for x in `seq 1 ${N}`; do ./add.sh $x >> run.txt ; done

cast --to-base $(cast storage 0xd2D85C4650BDD3B26B2C6Db1c9b32D7007Cf352D 1) 10 >> run.txt
