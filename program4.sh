# Heading: Program to calculate Mean and Variance
# Aim: To calculate Mean and Variance of 3 numbers

# Prompt user for input
echo "Enter the three numbers separated by space:"

# Read three space-separated numbers into variables a, b, c
read a b c

# Calculate sum using bc (basic calculator)
# Syntax: $(command) - command substitution, captures output
# echo "expression" | bc - sends mathematical expression to bc for evaluation
# bc evaluates the expression: a+b+c
# Result is stored in variable sum
sum=$(echo "$a+$b+$c" | bc)

# Calculate mean (average) with decimal precision
# scale=4 - sets bc to use 4 decimal places
# Syntax: scale=N; expression
# Formula: mean = sum/3
# The semicolon separates scale setting from the calculation
# bc performs floating-point division (unlike shell arithmetic)
mean=$(echo "scale=4; $sum/3" | bc)

# Display the calculated mean
echo "Mean of $a, $b, $c is $mean"

# Standard Deviation Calculation - Step 1
# Formula: SD = sqrt(Σ(x - mean)²/n)
# First, calculate (a-mean)² - the squared deviation of first number
# ($a-$mean)*($a-$mean) computes the square of the difference
# bc handles the decimal arithmetic since mean has decimal places
sd=$(echo "($a-$mean)*($a-$mean)" | bc)

# Standard Deviation Calculation - Step 2
# Add (b-mean)² to the running sum
# $sd contains the previous squared deviation
# $sd+($b-$mean)*($b-$mean) adds the second squared deviation
# This accumulates: (a-mean)² + (b-mean)²
sd=$(echo "$sd+($b-$mean)*($b-$mean)" | bc)

# Standard Deviation Calculation - Step 3
# Add (c-mean)² to complete the sum of squared deviations
# Now sd contains: (a-mean)² + (b-mean)² + (c-mean)²
# This is Σ(x - mean)² for all three numbers
sd=$(echo "$sd+($c-$mean)*($c-$mean)" | bc)

# Standard Deviation Calculation - Final Step
# Divide sum of squared deviations by n (3 numbers)
# scale=6 - use 6 decimal places for final precision
# Formula: variance = Σ(x - mean)²/n
# Note: This calculates variance, not standard deviation
# (Standard deviation would require sqrt, but bc doesn't have it built-in)
sd=$(echo "scale=6; $sd/3" | bc)

# Display the result (technically this is variance, not SD)
echo "Variance is $sd"

# Output:
# __________________________________________
# | Enter the three numbers separated by space:|
# | 1 2 3                                      |
# | Mean of 1, 2, 3 is 2.0000                  |
# | Variance is .666666                        |
# |____________________________________________|
