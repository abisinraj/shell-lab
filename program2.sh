# Variable initialization
# Syntax: variable=value (no spaces around =)
# Initialize sum to 0 - will store calculation results
sum=0

# Initialize loop control variable
# Syntax: variable="string"
# i is set to "y" to enter the while loop initially
i="y"

# while loop - repeats as long as condition is true
# Syntax: while [ condition ]; do ... done
# [ $i = "y" ] tests if variable i equals string "y"
# Note: spaces around [ and ] are required
# = is the string equality operator in test [ ]
while [ $i = "y" ]
do

# clear - clears terminal screen for clean menu display
clear

# Display menu options using echo
# Each echo prints one line to the terminal
echo "MENU"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
echo "Enter your choice"

# read - reads user's menu choice into variable ch
read ch

# Prompt for first number
echo "Enter first number:"
# read - stores first number in variable n1
read n1

# Prompt for second number
echo "Enter second number:"
# read - stores second number in variable n2
read n2

# case statement - multi-way branch based on pattern matching
# Syntax: case $variable in pattern) commands;; esac
# Matches the value of $ch against patterns (1, 2, 3, 4, or *)
case $ch in

# Pattern 1: Addition
# $((...)) is arithmetic expansion - evaluates mathematical expressions
# Syntax: $((expression))
# Performs integer arithmetic: n1 + n2
1) sum=$((n1 + n2))
   # Print result with variable interpolation
   echo "sum = $sum";;
   # ;; terminates this case branch

# Pattern 2: Subtraction
# $((n1 - n2)) subtracts n2 from n1
2) sum=$((n1 - n2))
   echo "Subtraction = $sum";;

# Pattern 3: Multiplication
# * is multiplication operator in arithmetic expansion
3) sum=$((n1 * n2))
   echo "Multiplication = $sum";;

# Pattern 4: Division
# / is integer division operator (truncates decimal)
4) sum=$((n1 / n2))
   echo "Division = $sum";;

# Pattern *: Default case (wildcard matches anything)
# Handles invalid input (not 1, 2, 3, or 4)
*) echo "invalid choice";;

# esac - ends the case statement (case spelled backwards)
esac

# Ask user if they want to continue
echo "Do you want to continue (y/n)?"
# read - stores user response in variable i
read i

# if statement - conditional execution
# Syntax: if [ condition ]; then commands; fi
# [ $i != "y" ] tests if i is NOT equal to "y"
# != is the not-equal operator
if [ $i != "y" ]; then
    # exit - terminates the script immediately
    # Syntax: exit [exit_code]
    exit
fi

# done - marks the end of the while loop
# If exit wasn't called, loop continues (goes back to while condition)
done
