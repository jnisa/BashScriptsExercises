number=$1

if [[ $((number%2)) -eq 0 ]] && [[ $number =~ ^[0-9]+$ ]]
then
 echo "True"
else
 echo "False"
 exit 1
fi
