
#shell script to display the content of a directory file in windows style
if [ $# -ne 0 ]
then
	 echo "Syntax error"
	 echo "< $0 >"
	exit
fi
ter=`tty`
ls -l > lsl
exec < lsl
cd=0
while read line
do
	
 	cd=`expr $cd + 1`
 	if [ $cd -eq 1 ]
 	then
		echo $line
 		continue
 	fi
	
	i=`echo $line | cut -d " " -f 9-`
	t=`date +%d/%m/%Y"  "%r -r "$i"`
	b=`echo $line | cut -d " " -f 5`
	if [ -d "$i" ]
	then
		echo  "$t\t<DIR>\t  $b\t   $i"	   
	else
	
		echo  "$t\t     \t  $b\t   $i"	
	fi
done
	
exec < $ter	 
rm lsl


#total 13276
#01/06/2022  01:04:19 PM IST	     	  282	   8.sh
#28/04/2022  01:06:56 PM IST	     	  1925	   a.6984.4665
#02/04/2022  01:15:18 PM IST	     	  113	   area.sh.6984.4665
#02/04/2022  12:19:32 PM IST	     	  204	   char1.sh.6984.4665
#02/04/2022  12:10:13 PM IST	     	  184	   char.sh.6984.4665
#26/05/2022  12:03:45 PM IST	     	  335	   delet9.sh
#28/04/2022  12:46:15 PM IST	     	  13496513	   duall.6984.4665
#07/04/2022  01:18:39 PM IST	     	  1010	   examples.6984.4665
#18/05/2022  02:27:54 PM IST	     	  401	   leap.sh.6984.4665
#06/06/2022  02:43:33 PM IST	     	  0	   lsl
#01/04/2022  03:19:18 PM IST	     	  206	   max3.sh.6984.4665
#02/04/2022  11:38:33 AM IST	     	  200	   name.sh.6984.4665
#02/04/2022  11:45:26 AM IST	     	  102	   num.sh.6984.4665
#28/04/2022  12:41:56 PM IST	     	  4500	   nwe.sh.6984.4665
#01/04/2022  03:59:37 PM IST	     	  261	   ppp.sh.6984.4665
#16/05/2022  03:59:53 PM IST	     	  260	   rename.sh.6984.4665
#24/03/2022  01:11:20 PM IST	     	  937	   shell.6984.4665
#02/06/2022  12:15:48 PM IST	     	  10240	   sh.tar
#19/05/2022  12:12:26 PM IST	     	  478	   triangle.sh.4665
#26/05/2022  11:39:19 AM IST	     	  473	   triangle.sh.6984.4665
#06/06/2022  02:27:51 PM IST	<DIR>	  4096	   Untitled Folder
#06/06/2022  02:40:32 PM IST	     	  524	   window10.sh

