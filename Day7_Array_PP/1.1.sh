max=10
count=1

while [ "$count" -le $max ]; 
do
 number[$count]=$(( RANDOM % (999 - 100 + 1 ) + 100 ))
 let "count ++"
done
echo "${number[@]}"

minf=${number[10]}
mins=${number[10]}
mint=${number[10]}
maxf=${number[0]}
maxs=${number[0]}
maxt=${number[0]}

for i in "${number[@]}"
do
    if [[ "$i" -le "$minf" ]]; 
	then
        minf="$i"
fi	
done

for j in "${number[@]}"
do
	if [[ "$j" -le "$mins" ]]; 
	then
		mins=$mint
        mint="$j"	
fi
done

for k in "${number[@]}"
do
    if [[ "$k" -gt "$maxf" ]]; 
	then
        maxf="$k"
fi	
done

for l in "${number[@]}"
do
	if [[ "$l" -gt "$maxs" ]]; 
	then
		maxs=$maxt
        maxt="$l"	
fi
done

echo "First Mini is: $minf"
echo "Second Mini is: $mint"
echo "First Maxi is: $maxf"
echo "Second Maxi is: $maxt"


