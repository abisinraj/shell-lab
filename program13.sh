# Clear the terminal screen for a clean output
clear

# Prompt for filename and read input in one line
# -p "prompt" displays the prompt string before reading input
# The entered filename is stored in variable 'file'
read -p "Enter the filename: " file

# Display a header for the file contents
echo "Contents of the file are"
echo "##############"

# Read and print the content of the file
# 'cat' command concatenates and displays the file content
echo "Displaying content of: $file"
cat $file

echo "#############"

# Count lines in the file
# wc -l counts the number of lines
# < $file redirects the file content into stdin of wc
# This robust method ensures wc outputs ONLY the number (no filename)
lines=$(wc -l < $file)

# Count words in the file
# wc -w counts the number of words
# < $file redirection ensures clean numeric output
words=$(wc -w < $file)

# Count characters (bytes) in the file
# wc -c counts the number of bytes/characters
# < $file matches the input redirection pattern used above
characters=$(wc -c < $file)

# Print the gathered statistics
echo "Number of lines = $lines"
echo "Number of words = $words"
echo "Number of characters = $characters"
