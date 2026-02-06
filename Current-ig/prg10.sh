clear
echo "enter the string"
read string 
stringrev=$(echo $string | rev )
if [ "$string" = "$stringrev" ] 
 then   
      echo "string is  palindrome"
    else
      echo " string is  not palindrome"
 fi     
