#! /bin/bash
find .  -name \*.1
date=$(date +%d%m%Y)
for file in *.1; 
	do
	echo "filename: ${file%.*}"
        echo "extension: ${file##*.}"
done
for f in *.1; 
	do 
    	mv -- "$f" "${f%.1}.log"
done
for f in *.log; 
	do 
    	mv -- "$f" "${f%.log}"
done
for file in *.log; 
do
   	basename=${file%.*}    
    	extension=${file##*.}  
    	mv "$file" "$basename"-"$date.$extension"
done
