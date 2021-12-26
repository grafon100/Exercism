#!/usr/bin/env bash
error=0
  main () {
    ar1=$1
    ar2=$2

    if [[ $ar1 == '' ]] && [[ $ar1 == '' ]]; then
    #не доконца понимаю почему имея услови "и" оно выполнятся как "или"
        if [[ $ar1 == '' ]] && [[ $ar2 != '' ]]; then
            echo "strands must be of equal length"
            exit 1
        fi
    #не доконца понимаю почему имея услови "и" оно выполнятся как "или"
        if [[ $ar1 != '' ]] && [[ $ar2 == '' ]]; then
            echo "strands must be of equal length"
            exit 1
        fi

        echo 0
    elif [[ ${#ar1} -eq ${#ar2} ]]; then
        if [[ $ar1 != $ar2 ]]; then
            if [[ ${#ar1} -eq 1 ]] || [[ ${#ar2} -eq 1 ]]; then
                echo 1
            else
                for (( i=0; i<${#ar1}; i++ )); do
                    if [[ ${ar1:$i:1} != ${ar2:$i:1} ]]; then   
                        error=$(( $error+1 )) 
                    fi 
                done
            echo $error
            fi
        else

            echo 0
        fi
   
    else

        echo "strands must be of equal length" 
        exit 1
        
    fi
    }
#
#   # call main with all of the positional arguments
  main "$@"
#
# *** PLEASE REMOVE THESE COMMENTS BEFORE SUBMITTING YOUR SOLUTION ***
