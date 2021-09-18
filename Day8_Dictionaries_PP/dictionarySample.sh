#!bin/bash
#https://www.howtogeek.com/730243/what-are-bash-dictionaries-on-linux-and-how-do-you-use-them/

print_asterRisk () {
   echo "********************"
}

declare -A countries=( [ALB]=Albania [BHR]=Bahrain [CMR]=Cameroon [DNK]=Denmark [EGY]=Egypt )

echo "${!countries[@]}"


print_asterRisk

#printing elements with key of dictionary
for key in "${!countries[@]}"; 
     do 
       echo "$key - ${countries[$key]}"
     done

print_asterRisk

#Print size of dictionary
echo "${#countries[@]}"

print_asterRisk

#Finding element exist
if [ ${countries[BHR]+_} ]; 
    then 
        echo "Found";
    else echo "Not found"; 
fi

print_asterRisk

#Adding new element
countries+=( [FJI]=Fiji )
echo "${!countries[@]}"