addition(){
 sum_ans=$( expr $1 + $2)
 echo "The result of the addition is: $sum_ans"
}

subtraction(){
 sub_ans=$( expr $1 - $2)
 echo "The result of the subtraction is: $sub_ans"
}

multiplication(){
 mult_ans=$( expr $1 '*' $2)
 echo "The result of the multiplication is: $mult_ans"
}

division(){
 div_ans=$(echo "$1/$2"  | bc -l )
 echo "The result of the division is: $div_ans"
}

if [[ $1 =~ ^[0-9]+$ ]] && [[ $2 =~ ^[0-9]+$ ]] && [ "$#" -eq 2 ]
then
 echo "### Basic Calculator Results ###"
 addition $1 $2
 subtraction $1 $2
 multiplication $1 $2
 division $1 $2
else
 echo "Error: The input values must be integers and you must provide two input values!"
fi
