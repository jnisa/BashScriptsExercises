if [[ $1 =~ ^[0-9]+$ ]]
then
 echo "The variable received is an integer!"
else
 echo "Error: The input variable must be an integer!"
 exit 1
fi
