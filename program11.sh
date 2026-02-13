# Clear the terminal screen to start with a blank slate
clear

# Prompt the user to enter the employee's name
echo "Enter the name of the employee"

# Read the employee's name into variable 'name'
read name

# Prompt the user for Basic Pay (BP)
echo "Enter the Basic Pay of the employee"

# Read Basic Pay into variable 'BP'
read BP

# Prompt the user for Dearness Allowance (DA) percentage
echo "Enter the DA of the employee"

# Read DA percentage into variable 'DA'
read DA

# Prompt the user for House Rent Allowance (HRA) percentage
echo "Enter the HRA of the employee"

# Read HRA percentage into variable 'HRA'
read HRA

# Calculate Gross Salary using 'bc' (Basic Calculator)
# Formula: Gross = Basic Pay + (Basic Pay * DA / 100) + (Basic Pay * HRA / 100)
# 'scale=2' ensures the result has 2 decimal places (for currency)
# The arithmetic expression is echoed and piped into 'bc'
# $BP, $DA, $HRA are variables expanded to their values
Gross=$(echo "scale=2;$BP+($BP*$DA/100)+($BP*$HRA/100)" | bc)

# Print the calculated Gross Salary for the employee
# $name and $Gross are interpolated into the string
echo "Gross salary of $name is Rs $Gross"
