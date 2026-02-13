# Echo command displays a message describing the program's purpose
echo "Program to check Armstrong number"

# Prompt the user to enter a number
echo "Enter the number: "

# Read the user's input and store it in variable 'n'
read n

# Initialize 'sum' variable to 0; this will hold the sum of cubes of digits
sum=0

# Store the original value of 'n' in 'old' because 'n' will be modified in the loop
# We need the original values later for comparison
old=$n

# Start a while loop that continues as long as 'n' is greater than 0
# This loop processes each digit of the number
while [ $n -gt 0 ]
do
    # Extract the last digit of the number using the modulo operator (%)
    # $(( ... )) is used for arithmetic expansion
    # Example: if n=153, 153 % 10 = 3
    sd=$((n % 10 ))

    # Calculate the cube of the digit and add it to the 'sum'
    # Logic: sum = sum + (digit * digit * digit)
    # This specific implementation checks for Armstrong numbers of order 3 (sum of cubes)
    sum=$(( sum + sd * sd * sd ))

    # Remove the last digit from the number using integer division
    # Example: 153 / 10 = 15 (integer division truncates the decimal part)
    n=$(( n / 10 ))
done

# Compare the original number ('old') with the calculated sum ('sum')
# -eq is the equality operator for numeric comparison
if [ $old -eq $sum ]; then
    # If they are equal, the number is an Armstrong number
    echo "Number is Armstrong"
else
    # If they are not equal, it is not an Armstrong number
    echo "Number is not Armstrong"
fi
