clear
sum=0
i="y"
while [ $i="y" ]
do
echo "MENU"
echo "1.Addition"
echo "2.Subtrction"
echo "3.Multiplication"
echo "4.Division"
echo "Enter your choice"
read ch
echo "Enter first no."
read n1
echo "Enter second no."
read n2
case $ch in
 1)sum=`expr $n1 + $n2`
   echo "sum="$sum;;
 2)sum=`expr $n1 - $n2`
   echo "sub="$sum;;
 3)sum=`expr $n1 \* $n2`
   echo "mul="$sum;;
 4)sum=`expr $n1 / $n2`
   echo "Div="$sum;;
   *)echo "invalid choice";;
 esac
 echo "Do uwant to cintinue(y/n)?"
 read i
 if [ $i != "y" ]
 then 
   exit
 fi
 done    
