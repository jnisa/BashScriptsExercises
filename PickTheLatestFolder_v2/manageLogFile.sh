
# Define elements
dash="-"
fileExt=".log"
dateExt=$(date '+%Y%m%d')
slash="/"

# Define the log file paths and date extension
initialPath="/Users/jnisa/Desktop/Projects/BashScriptsExercises/PickTheLatestFolder_v2/PlayGround/"
consumeZone="startingPoint/"
landingZone="endingPoint/"

# Go to the ConsumeZone
cd "$initialPath$consumeZone"

# Get the list of applications
dirs=$(find ${PWD} -maxdepth 1 -mindepth 1 -type d)

for dir in $dirs
do

 # Go iteratively to each directory
 cd $dir
 # Determine the lastest folder and the lastest file name
 latestLogsFolder=$(ls -Art | tail -n 1)
 cd "$dir${slash}$latestLogsFolder"
 latestLogFile=$(ls -Art | tail -n 1)
 fileName="${latestLogFile%%.*}"
 # Get the subfolder name
 appFolder=$(echo $dir | rev | cut -d"/" -f1 | rev)

 # Create the application subfolder on the landing zone if it does not exist
 if [[ -e "$initialPath$landingZone$appFolder" ]]
 then
  echo "The application subfolder does not need to be created on the landing zone!"
 else
  echo "The application subfolder was created!"
  mkdir "$initialPath$landingZone$appFolder"
 fi
 

 # Copy the files from the Consume Zone
 cp -a "$dir${slash}$latestLogsFolder${slash}$latestLogFile" "$initialPath$landingZone$appFolder${slash}$fileName${dash}$dateExt${fileExt}"

done 

