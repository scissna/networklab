#shell script to delete all lines if a file containing word linux
if [ $# -ne 0 ]
then
	echo "syntax error"
	exit
fi

echo " enter the file name:"
read file

ter=`tty`
exec < $file

while read line
do
echo $line | grep linux > file2
	if [ $? -eq 0 ]
	then
		continue
	fi	
	echo $line >> file1
done

mv file1 $file
rm file2
exec < $ter




#output
#$ cat > new.sh
#linux
#os
#dbms
#ds
#network

#ksb@ksb-OptiPlex-3060:~/Desktop/SCISSNA/script/Untitled Folder$ sh delet9.sh
# enter the file name:
#new.sh
#ksb@ksb-OptiPlex-3060:~/Desktop/SCISSNA/script/Untitled Folder$ cat  new.sh
#os
#dbms
#ds
#network

