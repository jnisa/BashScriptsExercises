testArray=( 1 2 3 4 5 6 )

for i in "${testArray[@]}"
do
 echo $i
 sh /Users/jnisa/Desktop/Projects/BashScriptsExercises/IsInteger/is_integer.sh $1 
done
