
#13. Shell script to count the occurrence of words in a file in a set of files
if [ $# -eq 0 ]
then 
	echo "Syntax error"
	echo "$0 file1 file2 etc..."
	exit
	fi

k=$#
j=0
echo "enter a word"
read word


ter=`tty`
while [ $k -gt 0 ]
do
fname=$1

exec < $fname
i=0
while read line
do
	for l in $line
	do
		echo $l | grep $word > grp
		if [ $? -eq 0 ]
		then
			i=`expr $i + 1`
		fi
	done
done

j=`expr $j + $i`
echo "occurrences of word $word in $fname - $i"
shift
k=`expr $k - 1`
exec < $ter
done

echo "total occurrences word $word - $j"
rm grp

#output
#ksb@ksb-OptiPlex-3060:~/Desktop/SCISSNA/script/Untitled Folder$ sh count13.sh file5 nw2.sh new.sh
#enter a word
#os
#occurrences of word os in file5 - 1
#occurrences of word os in nw2.sh - 1
#occurrences of word os in new.sh - 0
#total occurrences word os - 2

