# Heading: Program to calculate Area and Circumference of a Circle
# Aim: To calculate Area and Circumference of a Circle given radius

# clear - Built-in command that clears the terminal screen
# Syntax: clear
# This provides a clean display before the program output
clear

# echo - Built-in command that prints text to standard output (terminal)
# Syntax: echo "string"
# The text in quotes is displayed exactly as written
echo "Enter the radius of the circle:"

# read - Built-in command that reads user input from stdin
# Syntax: read variable_name
# Waits for user to type input and press Enter, then stores it in variable 'r'
read r

# Command substitution with $(...) and pipe to bc calculator
# Syntax: variable=$(command)
# - $(...) executes the command inside and captures its output
# - echo "expression" prints the mathematical expression as a string
# - | (pipe) sends the output of echo to the next command
# - bc is a command-line calculator that evaluates the expression
# - $r is variable expansion - replaced with the value stored in variable r
# Formula: Area = π * r² (using 3.14 as approximation of π)
area=$(echo "3.14 * $r * $r" | bc)

# Same command substitution pattern as above
# Formula: Circumference = 2 * π * r
# The expression "3.14 * 2 * $r" is sent to bc for calculation
circum=$(echo "3.14 * 2 * $r" | bc)

# echo with variable interpolation
# Syntax: echo "text $variable"
# $area is expanded to its calculated value within the double-quoted string
echo "Area of the circle is: $area"

# Similar to above - prints the circumference with variable expansion
# $circum is replaced with the calculated circumference value
echo "Circumference of the circle is: $circum"

# Output:
# __________________________________________
# | Enter the radius of the circle:        |
# | 5                                      |
# | Area of the circle is: 78.5            |
# | Circumference of the circle is: 31.4   |
# |________________________________________|
