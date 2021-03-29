# get the input array of the shell script
inputArray=("$@")

# declare an empty array for the output
declare -a ansArray=()

# loop to select the even numbers only
for i in "${inputArray[@]}"
do
    if [[ $i =~ ^[0-9]+$ ]] && [[ $((i%2)) -eq 0 ]] 
    then
        ansArray+=( $i )
    fi
done

echo ${ansArray[@]}
