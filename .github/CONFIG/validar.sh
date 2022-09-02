#!/bin/bash

SEARCH="$1"
FILE="$2"
function search() {
    if grep --extended-regexp "$SEARCH" -- $FILE
    then
        return 0
    else
        return 1  
    fi
}

search