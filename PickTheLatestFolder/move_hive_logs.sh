
# directories to be monitored
initialPath=/Users/jnisa/Desktop/Projects/BashScriptsExercises/PickTheLatestFolder/PlayGround/
startingPoint=startingPoint/
endPoint=endPoint/
retentionPeriod=1

# go to the log directory
cd "$initialPath$startingPoint"

# get the latest log folder
latestLogsFolder=$(ls -Art | tail -n 1)

# check if the latest log folder was not copied already
if [[ -e "$initialPath$endPoint$latestLogsFolder" ]]
then
 echo "There's no new files to be copied!"
else
 echo "There's new files to be copied!"
 cp -a "$initialPath$startingPoint$latestLogsFolder" "$initialPath$endPoint"
fi

# set the rotation of those logs 
count=$(find "$initialPath$endPoint" -maxdepth 1 -mindepth 1 | wc -l)
echo $count

if [ "$count" -gt "$retentionPeriod" ]
then
 find "$initialPath$endPoint" -maxdepth 1 -mindepth 1 -name "*" -mtime "$retentionPeriod" -exec rm -rf {} \;
 echo "hdfs logs have been rotated!" 
else
 echo "no hdfs logs to be rotated!"
fi 
