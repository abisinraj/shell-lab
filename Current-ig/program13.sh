clear
read -p "Enter the filename: " file

echo "Contents of the file are"
echo "##############"
cat $file
echo "#############"

lines=$(wc -l < $file)
words=$(wc -w < $file)
characters=$(wc -c < $file)

echo "Number of lines = $lines"
echo "Number of words = $words"
echo "Number of characters = $characters"
