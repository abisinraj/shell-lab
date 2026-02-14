echo "Factorial of the number :"
read fact 
ans=1
counter=1
while [ $counter -le $fact ]
do
  counter=`expr $counter + 1`
  ans=`expr $ans \* $counter`
done
echo "totel of factorial is $ans"
  
