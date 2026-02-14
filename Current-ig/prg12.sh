clear 
echo "enter the name of the employee"
read name
echo " enter the basic pay of the employee"
read BP
echo "enter the DA of the employee" 
read DA
echo "enter the HRA of the employee"
read HRA
Gross=$(echo "scale=2; $BP+($BP*$DA/100)+($BP*$HRA/100)" | bc )
echo "gross salary of $name  is Rs $Gross"
