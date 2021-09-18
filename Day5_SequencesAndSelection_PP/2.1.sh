m=$(( RANDOM % (999 - 100 + 1 ) + 100 ))
n=$(( RANDOM % (999 - 100 + 1 ) + 100 ))
o=$(( RANDOM % (999 - 100 + 1 ) + 100 ))
p=$(( RANDOM % (999 - 100 + 1 ) + 100 ))
q=$(( RANDOM % (999 - 100 + 1 ) + 100 ))

echo $m; echo $n; echo $o; echo $p; echo $q

echo 

if (( ($m<$n) && ($m<$o) && ($m<$p) && ($m<$q) )); then
        echo "Minimum number is $m"
elif (( ($n<$m) && ($n<$o) && ($n<$p) && ($n<$q) )); then
        echo "Minimum number is $n"
elif (( ($o<$m) && ($o<$n) && ($o<$p) && ($o<$q) )); then
        echo "Minimum number is $o"
elif (( ($p<$m) && ($p<$o) && ($p<$n) && ($p<$q) )); then
        echo "Minimum number is $p"
else
        echo "Minimum number is $q"
fi

if (( ($m>$n) && ($m>$o) && ($m>$p) && ($m>$q) )); then
        echo "Maximum number is $m"
elif (( ($n>$m) && ($n>$o) && ($n>$p) && ($n>$q) )); then
        echo "Maximum number is $n"
elif (( ($o>$m) && ($o>$n) && ($o>$p) && ($o>$q) )); then
        echo "Maximum number is $o"
elif (( ($p>$m) && ($p>$o) && ($p>$n) && ($p>$q) )); then
        echo "Maximum number is $p"
else
        echo "Maximum number is $q"
fi

