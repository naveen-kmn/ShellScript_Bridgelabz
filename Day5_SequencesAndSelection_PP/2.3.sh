#!/bin/bash
read -p "Enter the year: " year
if (( $year%4 == 0 ));
 then
echo "$year is leap year"
else
echo "$year is not a leap year"
fi
