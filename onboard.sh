#!/bin/bash

FILE="new_hires.csv"

if [ "$(id -u)" -ne 0 ]; then
	echo"Error This script must be run with sudo or root user"
	exit 1
fi

if [ ! -f "$FILE" ]; then
	echo "error $FILE not found "
	exit 1
fi

echo "starting onboarding process"

while IFS=',' read -r USER_NAME DEPT_GROUP;
do
       if [ -z "$USER_NAME" ]; then continue; fi

       echo "processing $USER_NAME in $DEPT_GROUP..."


       if ! grep -q "^$DEPT_GROUP:" /etc/group; then
	       groupadd "$DEPT_GROUP"
	       echo "group added"
	fi

	if  id "$USER_NAME" &>/dev/null; then
	       echo "$USER_NAME already exist"
       else
		useradd -m -G "$DEPT_GROUP" -s /bin/bash "$USER_NAME"
 		echo "user created succesfully : $USER_NAME"
		echo "$USER_NAME:Welcome123" | chpasswd
		echo "password set"
	fi		
done < "$FILE"
