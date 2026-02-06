clear 
echo "program to print prime number"
echo "enter the limit"
read n
i=1
echo "prime number are..."
while [ $i -le $n ]
do
  flag=0
   j=2
   while [ $j -lt $i ] 
   do
   k=$(( i % j ))
    if [ $k -eq 0 ]
     then 
      flag=1
      fi
    j=$(( j + 1 ))
    done
     if [ $flag -eq 0 ] 
     then
     echo -n " $i"
     fi
i=$(( $i + 1 ))
done
echo       
