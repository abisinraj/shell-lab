# Program : 13. Average of numbers entered as command line arguments
# Author : Rijila Nadh

# Clear the terminal output
clear

# Initialize sum variable
sum=0

# Get the number of arguments passed
n=$#

# Iterate through all command line arguments
for i in "$@"
do
    # Add each argument to sum
    sum=$((sum + i))
done

# Calculate average using bc for floating point precision
# scale=2 sets the number of decimal places
avg=$(echo "scale=2;$sum/$n" | bc)

# Display the result
echo "Average of the numbers = $avg"
