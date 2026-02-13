clear
echo "Enter the string:"
read string
stringrev=$(echo $string | rev)
if [ "$string" != "$stringrev" ]; then
echo "String is not a palindrome"
else
echo "Input string is a palindrome"
fi
