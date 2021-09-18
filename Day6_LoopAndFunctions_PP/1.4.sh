echo "Enter the lower limit,greater than 1"
read low
echo "Enter the upper limit"
read upper

for num in `seq $low $upper`
do
ret=$(factor $num | grep $num | cut -d ":" -f 2 | cut -d " " -f 2)
if [ "$ret" -eq "$num" ] 
then 
echo "$num is prime" 
((count++))
fi 
done
echo -e "\n There are $count number of prime numbers"