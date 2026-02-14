# Prompt the user to enter a number
echo "Enter a number:"

# Read the user's input into variable 'number'
read number

# Check if the number is even or odd using the modulo operator
# $(expr $number % 2) performs arithmetic expansion using 'expr' command
# % is the modulo operator (remainder of division)
# If number % 2 equal to 0, it means the number is divisible by 2 (Even)
# -eq is the integer equality comparison operator
if [ $(expr $number % 2) -eq 0 ]; then
     # If the remainder is 0, print that the number is even
     echo "$number is even."
else
     # If the remainder is NOT 0 (i.e., 1), print that the number is odd
     echo "$number is odd."
fi

# __________________________________________
# | Enter a number:                        |
# | 10                                     |
# | 10 is even.                            |
# |________________________________________|
