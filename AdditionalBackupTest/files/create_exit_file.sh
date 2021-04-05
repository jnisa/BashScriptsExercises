RECENT=$(ls -t "${1}" | head -n1)
EXIT_CODE="exit_code.txt"

cat >> "${1}/$RECENT/$EXIT_CODE"
