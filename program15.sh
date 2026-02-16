# Heading: Program to Count Vowels and Consonants
# Aim: To count vowels and consonants in a string

# Clear the terminal screen for a clean output
clear

# Prompt the user to enter a text string
echo "Enter the string "

# Read the user's input into variable 'word'
read word

# Extract all vowels from the string
# echo $word pipes the string to sed (stream editor)
# sed 's/[^aeiouAEIOU]//g':
#   s/ -> substitute command
#   [^aeiouAEIOU] -> Match any character that is NOT a vowel (caret ^ inside [] means negation)
#   // -> Replace matched characters with nothing (delete them)
#   g -> Global flag (replace all occurrences, not just the first one)
# Result: Only the vowels remain in the string
vowels=$(echo $word | sed 's/[^aeiouAEIOU]//g')

# Extract all consonants from the string
# Similar logic to above:
#   [^bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ] -> Match any character that is NOT a consonant
#   // -> Replace non-consonants with nothing
# Result: Only the consonants remain
consonants=$(echo $word | sed 's/[^bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]//g')

# Display statistics using Shell Parameter Expansion
# ${#variable} returns the length of the string stored in variable

# Print total length of the original string
echo "${#word} characters"

# Print number of vowels found (length of the 'vowels' string)
echo "${#vowels} vowels"

# Print number of consonants found (length of the 'consonants' string)
echo "${#consonants} consonants"

# Output:
# __________________________________________
# | Enter the string                       |
# | hello                                  |
# | 5 characters                           |
# | 2 vowels                               |
# | 3 consonants                           |
# |________________________________________|
