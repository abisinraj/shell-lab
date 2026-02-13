# echo - Display prompt asking user for input
# Instructs user to enter three numbers separated by spaces
echo "Enter three numbers separated by space:"

# read with multiple variables
# Syntax: read var1 var2 var3
# Reads space-separated input and assigns to variables a, b, and c
# Example: if user types "10 25 15", then a=10, b=25, c=15
read a b c

# Variable assignment - assume first number is largest initially
# Syntax: Variable=value (use capital letters for clarity, not required)
# This is our starting point for comparison
Large=$a

# First if statement - compare second number with current largest
# Syntax: if [ condition ]; then commands; fi
# [ $b -gt $Large ] is a test condition
# -gt is "greater than" operator for integer comparison
# Operators: -gt (>), -lt (<), -ge (>=), -le (<=), -eq (==), -ne (!=)
if [ $b -gt $Large ]; then
    # If b is greater than Large, update Large to b
    Large=$b
# fi - ends the if statement
fi

# Second if statement - compare third number with current largest
# [ $c -gt $Large ] tests if c is greater than current Large
# At this point, Large is either a or b (whichever was bigger)
if [ $c -gt $Large ]; then
    # If c is greater than Large, update Large to c
    # Now Large holds the maximum of all three numbers
    Large=$c
fi

# echo with variable interpolation
# $a, $b, $c, $Large are expanded to their values
# Commas and spaces in the string are printed literally
echo "Largest of $a, $b, $c is $Large"
