clear
echo "enter file name:"
read file 
if [ ! -f "$file" ]
then
 echo "file does not exist"
 exit 1
fi 
echo "contents of the file are"
echo "##############"
cat "$file"
echo "##########"
lines=` wc -l "$file" | cut -d " " -f 1`
echo "number of lines=$lines"
words=` wc -w "$file" | cut -d " " -f 1`
echo "number of words=$words"
chars=` wc -c "$file" | cut -d " " -f 1`
echo "number of characters=$chars"
