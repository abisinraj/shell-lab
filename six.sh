# Clear terminal screen for clean output
clear

# Display program title
echo "Program to print prime numbers"

# Prompt user for the upper limit
echo "Enter the limit:"

# Read the limit into variable n
read n

# Initialize outer loop counter i to 2
# We start at 2 because 1 is not considered a prime number
i=2

# Header for the output
echo "Prime numbers are..."

# Outer Loop: Iterate through all numbers from 2 up to n
# Syntax: while [ condition ]; do ... done
# -le is "less than or equal to"
while [ $i -le $n ]
do

    # Initialize flag to 0 for current number i
    # flag=0 assumes i is prime initially.
    # If we find a divisor later, we'll set flag=1 (not prime).
    flag=0

    # Initialize inner loop counter j to 2
    # We test divisibility starting from 2 up to (i-1)
    j=2

    # Inner Loop: Check if 'i' is divisible by any number 'j'
    # loop runs from j=2 to j < i
    while [ $j -lt $i ]
    do
        # Calculate remainder of i divided by j
        # % is modulo operator
        k=$((i % j))

        # Check if remainder is 0 (meaning i is divisible by j)
        # -eq is "equal to"
        if [ $k -eq 0 ]; then
            # If divisible, it's not a prime number
            flag=1
            # Break out of inner loop - no need to check further
            break
        fi

        # Increment inner loop counter
        j=$((j + 1))
    done

    # After inner loop, check the flag
    # If flag remains 0, no divisors were found -> it is Prime
    if [ $flag -eq 0 ]; then
        # Print the prime number
        # -n option suppresses the trailing newline so numbers print on one line
        echo -n " $i"
    fi

    # Increment outer loop counter to check next number
    i=$((i + 1))
done

# Print a final newline for clean formatting
echo

# __________________________________________
# | Enter the limit:                       |
# | 10                                     |
# | Prime numbers are...                   |
# | 2 3 5 7                                |
# |________________________________________|
