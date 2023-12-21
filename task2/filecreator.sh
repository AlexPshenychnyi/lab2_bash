#!/bin/bash

file_count=$(ls alex* 2>/dev/null | wc -l)

if [ $file_count -eq 0 ]; then
	echo "No alex files"
	touch alex
	for i in {1..24}
	do
		touch "alex$i"
	done
else
	echo "$file_count alex files"
	for i in {1..25}
	do
		new_i=`expr $i + $file_count`;
		touch "alex$new_i"
	done
fi