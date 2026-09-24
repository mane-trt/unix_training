#!/bin/sh
linear_search() {
	target=$1
	shift

	n=0

	for i in "$@"
	do
		if [ "$i" = "$target" ]; 
		then
			echo "$n"
			return
		fi

		n=$((n+1))
	done
	echo "-1"
}

linear_search 8 4 8 12
linear_search 4 4 8 12
linear_search 12 4 8 12
linear_search 99 4 8 12
linear_search 5
