#!/bin/bash
#add fix to exercise6-fix here
#Maxim Baran 2021-12-01



#Check Destination folder
if [ $# -lt 2 ]; then
    echo "ERROR: variable number of arguments must to be a minimum of 2 arguments"
    exit 1
fi

destFolder=${@:$#};
#echo $destFolder;



#Check Destination server
if [[ $(hostname) == "server1" ]]; then
        destServer="server2"
elif [[ $(hostname) == "server2" ]]; then
        destServer="server1"
else
        echo "ERROR: Invalid Hostname"
        exit 1
fi
#echo $destServer;


#Run all files, create list files and calculate total number of bytes copied without last one
for ((i=1; i<$#; i++));do
        files+="${!i} ";        #List of files
        length=($(du -bc ${!i})); #Calculate total number of bytes copied
        num=$((num + $length));
done


#Check if all files is exists
for ((i=1; i<$#; i++));do
        if [ ! -f "${!i}" ]; then
                echo "ERROR: file ${!i} not exists."
                exit 1
        fi
done


#Copy files
scp -rp $files "$destServer":"$destFolder" 2>&1 | tee /tmp/logExercise6.txt


#Print total number of bytes copied
echo $num;
exit 0;
