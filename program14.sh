clear
echo "Enter the string "
read word

vowels=$(echo $word | sed 's/[^aeiouAEIOU]//g')
consonants=$(echo $word | sed 's/[^bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]//g')

echo "${#word} characters"
echo "${#vowels} vowels"
echo "${#consonants} consonants"
