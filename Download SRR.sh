#!/bin/bash
##########################################
#   Program:
#       Download SRR 
#   History:
#       2022/11/5 1.1
#   Author:
#       DTurtle
##########################################

PATH=${PATH}:/sratoolkit.3.0.0-ubuntu64/bin # add the prefetch to PATH
export $PATH
###################################################
# list
echo "Please input SRR list.txt："
read SRR_list  # input the list
###########################################
# download
cat $SRR_list | while read id
do 
nohup # increase nohup
prefetch $id
echo $id
echo $(time())   # running time
>> prefetch.log 2>>&1 &
done


