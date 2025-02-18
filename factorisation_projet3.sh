#!/bin/bash

echo "***Factorisation***"


function factorisation_naive()
{
    a=$1
    b=2
    until [ $(($a/$b)) -lt $b ]; do
        if [ $((a%b)) -eq 0 ]; then
            echo " ==> $n = $b * $(($a/$b))"
            exit 0
        fi
        b=$(($b+1))
    done
    echo "$n est un nombre premier."
}

read -p "Entrez un nombre entier: " n
factorisation_naive $n
