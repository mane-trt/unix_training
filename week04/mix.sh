#!/bin/bash
min_max() {
    if [ "$#" -eq 0 ]; then
        echo "Liste vide"
        return 1
    fi
    min=$1
    max=$1
    for n in "$@"; do
        if [ "$n" -lt "$min" ]; then
            min=$n
        fi
        if [ "$n" -gt "$max" ]; then
            max=$n
        fi
    done

    echo "Min: $min"
    echo "Max: $max"
}

min_max "$@"
