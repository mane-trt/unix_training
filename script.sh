#!/bin/bash
sum_list(){
	x=0
	for i in "$@"; do
		x=$(( x+i ))
	done
	echo "$x"
}


average() {
	if [ "$#" -eq 0 ]; then
		return 1
	fi

	echo $(( $(sum_list "$@") / $# ))
}
