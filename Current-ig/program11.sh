clear
echo "Enter the name of the employee"
read name
echo "Enter the Basic Pay of the employee"
read BP
echo "Enter the DA of the employee"
read DA
echo "Enter the HRA of the employee"
read HRA
Gross=$(echo "scale=2;$BP+($BP*$DA/100)+($BP*$HRA/100)" | bc)
echo "Gross salary of $name is Rs $Gross"
