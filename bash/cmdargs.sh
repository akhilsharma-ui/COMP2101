#!/bin/bash
myargs=()
v=0
d=0
while [ $# -gt 0 ]; do
	echo "Myarg array contents ${myargs[@]}"
	echo "There are $# thing left to process."
	myargs+=("$1")
	echo "Added \'$1\' to the array"
	echo "Processing the value '$1'."
	case $1 in
		-h )
			echo 'You added "-h" for help.'
		echo 'Processing the "-h".'
		echo "Choose -v for Varbose and -d for Debug and choose within 1 to 5."
			;;
		-v )
			echo 'You added "-v" for varbose.'
			echo 'Processing the "-v".'
		v=1
			;;
		-d )
		echo 'Processing the "-d".'
	    case "$2" in
			[1-5] )
				echo "You added the -d for debug level $2."
				d=$2
				shift
				;;
			*)
				echo "Error: The debug mode should be between [1-5]. "
				shift
      esac
	    ;;
    *)
	  errors=$1
	  echo "Error: unkown value found: $errors"
	  shift
	  ;;
	esac
	shift
	echo "Shifted command line, leaving $# things left to process."
	echo "========================================================="
done
if [ $v = 1 ]; then
  echo "Varbose mode is On."
  echo
else
  echo
  echo "Varbose mode is Off."
fi
if [ $d -gt 0 ]; then
  echo "Debug Mode is On with level $d."
  echo
else
  echo
  echo "Debug Mode is Off."
fi