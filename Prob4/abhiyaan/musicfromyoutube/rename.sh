#! /usr/bin/bash

for line in *.txt; do 
	new_line = {line:20:}
	echo $new_line
	#echo `mv "$line" "$new_line" `

done
