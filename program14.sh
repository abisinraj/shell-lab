# Clear the terminal screen for a fresh display
clear

# Get the current time in HH:MM:SS format
# 'date' command prints system date and time
# +"%T" format specifier outputs time as HH:MM:SS (24-hour clock)
# This is for display purposes only
now=$(date +"%T")

# Print the current time to the user
echo "Current time: $now"

# Get the current hour in 24-hour format (00-23)
# +"%H" format specifier extracts just the hour
# We need this for the logical comparisons below
now=$(date +"%H")

# Check time ranges to determine the appropriate greeting
# -ge: greater than or equal to
# -lt: less than
# -a: logical AND operator

# If hour is between 02:00 (2 AM) and 06:00 (6 AM)
# Note: This range seems unusually early for "Good morning" but follows the script logic
if [ $now -ge 06 -a $now -le 12 ]
then
    echo "Good morning"

elif [ $now -ge 12 -a $now -le 17 ]
then
    echo "Good afternoon"

else
    echo "Good evening"
fi

# __________________________________________
# | Current time: 10:00:00                 |
# | Good afternoon                         |
# |________________________________________|
