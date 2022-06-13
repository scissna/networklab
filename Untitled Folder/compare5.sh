
#Shell script to compare two files. If the files are identical delete one
echo "enter filename 1:"
read f1
echo "enter filename 2:"
read f2
cmp $f1 $f2
if [ $? -eq 0 ]
then
    rm $f2
    echo "second file removed"
    exit
fi
echo "files not identical"



#ouput

#ksb@ksb-OptiPlex-3060:~/Desktop/SCISSNA/script/Untitled Folder$ sh compare5.sh
#enter filename 1:
#rang11.sh
#enter filename 2:
#compare5.sh
#rang11.sh compare5.sh differ: byte 3, line 2
#files not identical



#ksb@ksb-OptiPlex-3060:~/Desktop/SCISSNA/script/Untitled Folder$ sh compare5.sh
#enter filename 1:
#file1
#enter filename 2:
#file2
#second file removed

