echo "Program to check Armstrong number"
echo "Enter the number: "
read n
sum=0
old=$n
while [ $n -gt 0 ]
do

sd=$((n % 10 ))
sum=$(( sum + sd * sd * sd ))
n=$(( n / 10 ))
done
if [ $old -eq $sum ]; then
echo "Number is Armstrong"
else
echo "Number is not Armstrong"
fi
