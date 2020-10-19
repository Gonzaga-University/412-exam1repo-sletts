username="$1"
while [ "$username" == "" ]; do
	read -p "Enter your username: " username
	egrep -i "$username" /etc/passwd;
	if [ $? -eq 0 ]; then
		if [ id $1 > 1000 ]; then
			echo "It's a real username!"
		else
			echo "Error. Input is not within the ID value of a proper username"
		fi
    else
    	echo "Error: Username doesn't seem to exist. Sorry."
        username="ERROR"
	fi
done
