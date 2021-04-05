OLDEST_BACKUP=$(find "${2}" -maxdepth 1 -mindepth 1 -mtime -1 -print)
EXIT_CODE="exit_code.txt"

if [[ -e "$OLDEST_BACKUP/$EXIT_CODE" ]]
then
 count=$(find "${2}" -maxdepth 1 -mindepth 1 | wc -l)

 if [ "$count" -gt "$1" ]
 then
  find "$2" -maxdepth 1 -mindepth 1 -name "*" -mtime "$1" -exec rm -rf {} \;
  echo "Files have been removed!" 
 else
  echo "There are no files to be deleted!"
 fi
else
 echo "Some backup must have failed, not possible to delete additional backups!"
fi
