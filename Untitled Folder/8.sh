#8. Shell script to display a file from last line to first line


if [ $# -ne 1 ]
then
	echo "syntax error"
	echo " <$0> <filename>"
	exit
fi

file=$1
ter=`tty`
exec < $file
c=0
while read line
do
c=`expr $c + 1`
done
exec < $ter

while [ 0 -le $c ]
do
cat $file | head -$c | tail -n +$c
c=`expr $c - 1`
done 



#output
ksb@ksb-OptiPlex-3060:~/Desktop/SCISSNA/script/Untitled Folder$ cat> file
hjdhfgkh
jhskhghgkl
jfdhkjhs
kjfhgkhkf
^C
ksb@ksb-OptiPlex-3060:~/Desktop/SCISSNA/script/Untitled Folder$ sh 8.sh file
kjfhgkhkf
jfdhkjhs
jhskhghgkl
hjdhfgkh

