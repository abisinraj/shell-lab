clear
now=$(date +"%T")
echo "Current time: $now"
now=$(date +"%H")

if [ $now -ge 02 -a $now -lt 06 ]; then
   echo "Good morning"
elif [ $now -ge 06 -a $now -lt 14 ]; then
   echo "Good afternoon"
else
   echo "Good evening"
fi
