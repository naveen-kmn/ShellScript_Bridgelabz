#!/bin/bash
Coin=$(( RANDOM%2 ))
if (( ${Coin} == 0 )); 
then
    echo "HEADS"
else (( ${Coin} == 1 ));
    echo "TAILS"
fi
