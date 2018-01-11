#!/usr/bin/env bash
# author: Hendrik Werner s4549775

for x in $(sed 's/KEK/0/g;s/TOP/1/g' $1); do
	digit=${x:0:1}
	printf "$digit%.0s" $(seq 2 ${#x})
done
