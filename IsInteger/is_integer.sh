echo "The variable received as input is: ${1}"

if [[ $1 =~ ^[0-9]+$ ]]
then
 echo "The variable is an integer!"
else
 echo "Error: The input variable must be a string!"
 exit 1
fi
