# Heading: Program to calculate Average
# Aim: To calculate the average of numbers provided as arguments

# Clear the terminal screen for a clean output
clear

# Initialize 'sum' variable to 0
# This variable will accumulate the sum of all the numbers provided
sum=0

# Get the number of command-line arguments passed to the script
# $# is a special shell variable that holds the count of positional parameters
n=$#

# Check if any arguments were provided to avoid division by zero
if [ $n -eq 0 ]; then
    echo "No numbers provided."
    echo "Usage: sh $0 number1 number2 ..."
    exit 1
fi

# Iterate through all command-line arguments using a for loop
# "$@" expands to all command-line parameters as separate words ("$1" "$2" ...)
# This is safer than $* which expands to a single string
for i in "$@"
do
    # Add the current argument 'i' to the 'sum' variable
    # $((...)) performs arithmetic expansion
    sum=$((sum + i))
done

# Calculate the average using 'bc' (Basic Calculator) for floating-point precision
# standard shell arithmetic (expr or $(())) only supports integers
# scale=2 sets the output to 2 decimal places
# We echo the arithmetic string "scale=2; $sum / $n" into bc
avg=$(echo "scale=2;$sum/$n" | bc)

# Display the calculated average
echo "Average of the numbers = $avg"


# Output:
# __________________________________________
# | $ ./program13.sh 10 20 30              |
# | Average of the numbers = 20.00         |
# |________________________________________|
