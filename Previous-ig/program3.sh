echo "Enter three numbers separated by space:"
read a b c
Large=$a
if [ $b -gt $Large ]; then
Large=$b
fi
if [ $c -gt $Large ]; then
Large=$c
fi
echo "Largest of $a, $b, $c is $Large"
