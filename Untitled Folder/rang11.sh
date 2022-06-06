
#11. Shell script to print specified range of lines from given files
if [ $# -ne 3 ]
then 
	echo "syntax error"
	echo "<*.sh filename lowerlimt upperlimit>"
	exit
fi

file=$1
l=$2
u=$3
echo "\n----------------------"
echo "lines between $l - $u is printed below\n"

cat $file | head -$u | tail -n +$l



exit


/*output

ksb@ksb-OptiPlex-3060:~/Desktop/SCISSNA/script/Untitled Folder$ sh rang11.sh rang11.sh 5 10

----------------------
lines between 5 - 10 is printed below

	echo "syntax error"
	echo "<*.sh filename lowerlimt upperlimit>"
	exit
fi

file=$1
*/





