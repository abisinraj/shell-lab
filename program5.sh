# Clear terminal screen for clean output
clear

# Prompt user to enter a number to reverse
echo "Enter a number:"

# Read the number into variable n
read n

# Initialize sd (single digit) to 0
# sd will temporarily hold each extracted digit
sd=0

# Initialize rev (reversed number) to 0
# rev will accumulate the reversed number
rev=0

# while loop - continues as long as n is greater than 0
# Syntax: while [ condition ]; do ... done
# [ $n -gt 0 ] tests if n is greater than zero
# Loop extracts digits one by one from right to left
while [ $n -gt 0 ]
do

# Extract the rightmost digit using modulo operator
# Syntax: $((expression)) - arithmetic expansion
# % is modulo operator (remainder after division)
# Example: 12345 % 10 = 5 (extracts last digit)
sd=$((n % 10))

# Build the reversed number
# Formula: rev = rev * 10 + sd
# Multiply current rev by 10 to shift digits left
# Add the extracted digit to the right
# Example progression for 12345:
#   rev=0*10+5=5, rev=5*10+4=54, rev=54*10+3=543, etc.
rev=$((rev * 10 + sd))

# Remove the rightmost digit from n
# / is integer division operator (truncates decimal)
# Example: 12345 / 10 = 1234 (removes last digit)
# This prepares n for the next iteration
n=$((n / 10))

# done - marks end of while loop
# Loop continues until all digits are processed (n becomes 0)
done

# Display the reversed number
# $rev contains the final reversed value
echo "Reverse of the number is $rev"

# __________________________________________
# | Enter a number:                        |
# | 12345                                  |
# | Reverse of the number is 54321         |
# |________________________________________|
