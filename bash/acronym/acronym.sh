#!/usr/bin/env bash


main () {
    input=$1
    result=''
    
    my_arr=($(echo $input | tr " " "\n"))
    
    for word in "${my_arr[@]}"
    do
        
        result="$result${word:0:1}"
    done
    
    echo $result | tr '[:lower:]' '[:upper:]'
    
}

main "$@"

