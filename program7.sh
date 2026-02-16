# Heading: Program to generate Fibonacci Series
# Aim: To generate Fibonacci series up to N terms

# Clear terminal screen for clean output
clear

# Prompt user for how many Fibonacci terms to generate
echo "How many numbers of terms to be generated?"

# Read the number of terms into variable n
read n

# Initialize first Fibonacci number (F0 = 0)
# x holds the previous-previous term
x=0

# Initialize second Fibonacci number (F1 = 1)
# y holds the previous term
y=1

# Initialize loop counter to 2
# We start at 2 because we already have the first two terms (0 and 1)
i=2

# Display header for the Fibonacci series
echo "Fibonacci Series up to $n terms:"

# Print the first term (0)
echo "$x"

# Print the second term (1)
echo "$y"

# while loop - generates remaining Fibonacci terms
# Syntax: while [ condition ]; do ... done
# [ $i -lt $n ] tests if i is less than n
# Loop continues until we've generated n terms
while [ $i -lt $n ]
do

# Increment counter for next iteration
# $((i + 1)) adds 1 to i
i=$((i + 1))

# Calculate next Fibonacci number
# Fibonacci formula: F(n) = F(n-1) + F(n-2)
# z = x + y (sum of previous two terms)
# Example: if x=0, y=1, then z=1
#          if x=1, y=1, then z=2
#          if x=1, y=2, then z=3, etc.
z=$((x + y))

# Print the newly calculated Fibonacci term
echo "$z"

# Shift values for next iteration
# Move y (previous term) to x (previous-previous term)
# This prepares x for the next calculation
x=$y

# Move z (current term) to y (previous term)
# This prepares y for the next calculation
# After this: x and y are ready for next Fibonacci number
y=$z

# done - marks end of while loop
# Example progression for n=7:
#   Initial: x=0, y=1 (printed)
#   Iter 1: z=0+1=1, x=1, y=1
#   Iter 2: z=1+1=2, x=1, y=2
#   Iter 3: z=1+2=3, x=2, y=3
#   Iter 4: z=2+3=5, x=3, y=5
#   Iter 5: z=3+5=8, x=5, y=8
#   Series: 0, 1, 1, 2, 3, 5, 8
done

# Output:
# __________________________________________
# | How many numbers of terms to be generated?|
# | 5                                      |
# | Fibonacci Series up to 5 terms:        |
# | 0                                      |
# | 1                                      |
# | 1                                      |
# | 2                                      |
# | 3                                      |
# |________________________________________|
