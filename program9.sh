# Clear the terminal screen for clean output
clear

# Prompt the user to enter a string to check
echo "Enter the string:"

# Read the user's input into variable 'string'
read string

# Reverse the string
# echo $string pipes the variable content to the 'rev' command
# 'rev' is a utility that reverses lines of a file or string
# The result is stored in variable 'stringrev'
# Example: if string="madam", stringrev="madam"
#          if string="hello", stringrev="olleh"
stringrev=$(echo $string | rev)

# Compare the original string with the reversed string
# != is the string inequality operator
# We check if they are NOT equal first
if [ "$string" != "$stringrev" ]; then
    # If they are different, it's not a palindrome
    echo "String is not a palindrome"
else
    # If they are equal (the 'else' case), it is a palindrome
    # A palindrome reads the same forwards and backwards
    echo "Input string is a palindrome"
fi

# __________________________________________
# | Enter the string:                      |
# | madam                                  |
# | Input string is a palindrome           |
# |________________________________________|
