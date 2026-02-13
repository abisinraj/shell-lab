# Prompt the user to enter a number to calculate its factorial
echo "Factorial of the number?"

# Read the user's input and store it in the variable 'fact'
# 'fact' represents the number n for which we want to find n!
read fact

# Initialize 'ans' (answer) to 1
# This variable will accumulate the product of numbers from 1 to n
# We start with 1 because it's the identity element for multiplication
ans=1

# Initialize 'counter' to 0
# This variable will act as our loop counter, incrementing from 0 to n
counter=0

# Start a while loop that continues as long as 'fact' is not equal to 'counter'
# -ne is the "not equal" operator
# The loop will run until 'counter' reaches 'fact'
while [ $fact -ne $counter ]
do

    # Increment the counter by 1
    # $(( ... )) is used for arithmetic expansion
    # In the first iteration, counter becomes 1
    counter=$(( counter + 1 ))

    # Multiply the current 'ans' by the 'counter' value
    # logic: ans = ans * counter
    # Iteration 1: ans = 1 * 1 = 1
    # Iteration 2: ans = 1 * 2 = 2
    # Iteration 3: ans = 2 * 3 = 6
    # ... and so on until counter equals 'fact'
    ans=$(( ans * counter ))

done

# Print the final calculated factorial
# $ans holds the result (n!)
echo "Total of factorial is $ans"
