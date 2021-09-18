#!/bin/bash
# Take User input
# Add elements to arrays
# search for word in array

# Common function to print ******
print_Asterisk () {
   echo "************************************"
}

userInput_Arrays () {
   echo "We are in UserInput arrays"
   count=0
   read -p "Enter number of elements: " size;
   for (( i=0; i<$size; i++ ))
       do 
         read -p "Enter array element: " element;
         addedArray[((count++))]=$element
         echo {$addedArray[@]}
         if [ "${addedArray[$i]}" = "sak" ];
            then
            unset 'addedArray[$i]'
         fi
         echo ${addedArray[@]}
       done
}

userInput_Arrays
print_Asterisk
# Passing array as arguments
echo "Taking array as arguments"
function copyFiles() {
   arr=("$@")
   for i in "${arr[@]}";
      do
          echo "$i"
      done
}
array=("one 1" "two 2" "three 3")
copyFiles "${array[@]}"
