#!/bin/bash

while true
do
	echo "Countinue?(y/n)"
	read input
	case $input in
		n) break
			;;
		y) continue
			;;
		*) echo "Plese input y or n."
			;;
	esac
done
