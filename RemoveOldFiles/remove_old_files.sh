count=$(find "${2}" -maxdepth 1 -mindepth 1 | wc -l)

if [ "$count" -gt "$1" ]
then
 find "$2" -maxdepth 1 -mindepth 1 -name "*" -mtime "$1" -exec rm -rf {} \;
 echo "Files have been removed!" 
else
 echo "There are no files to be deleted!"
fi
