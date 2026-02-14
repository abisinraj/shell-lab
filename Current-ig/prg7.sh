echo "program to check armstrong number"
echo "Enter the number:"
read n
sum=0
old=$n
while [ $n -gt 0 ] 
do
 sd=$(( $n % 10 ))
 sum=$(( $sum + $sd* $sd* $sd ))
 n=$(( $n / 10 ))
done
if [ $old -eq $sum ]
then
 echo "number is armstrong"
else
 echo "number is not armstrong"
fi

  
  
