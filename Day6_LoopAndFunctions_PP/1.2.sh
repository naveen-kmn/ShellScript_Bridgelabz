echo Enter a number
read n
for (( i=1 ; i<=n ; i++ ))
do
	a=(1/$i)
	c=$a+$b
	echo "$c"
done
