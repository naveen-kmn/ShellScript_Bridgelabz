R1=$(( RANDOM % (99 - 10 + 1 ) + 10 ))
R2=$(( RANDOM % (99 - 10 + 1 ) + 10 ))
R3=$(( RANDOM % (99 - 10 + 1 ) + 10 ))
R4=$(( RANDOM % (99 - 10 + 1 ) + 10 ))
R5=$(( RANDOM % (99 - 10 + 1 ) + 10 ))
echo $R1;
echo $R2;
echo $R3;
echo $R4;
echo $R5;
Addition=$(((((R1+R2+R3+R4+R5)))))
Average=$((Addition/5))
echo
echo "Addition of 5 Random numbers=" $Addition;
echo "Average of 5 Random numbers=" $Average;