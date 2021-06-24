
# directories to be monitored
initialPath=/Users/jnisa/Desktop/Projects/BashScriptsExercises/PickTheLatestFolder/PlayGround/
startingPoint=startingPoint/
endPoint=endPoint/

# go to the log directory
cd "$initialPath$startingPoint"

# get the latest log folder
latestLogsFolder=$(ls -Art | tail -n 1)

# check if the latest log folder was not copied already
if [[ -e "$initialPath$endPoint$latestLogsFolder" ]]
then
 echo "There's no new files to be copied!"
 # place your copy command here
else
 echo "There's new files to be copied!"
fi 
