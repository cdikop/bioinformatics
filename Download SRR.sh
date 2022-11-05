#!/bin/bash
##########################################
#   Program:
#       Download SRR 
#   History:
#       2022/11/4 1.0
#   Author:
#       DTurtle
##########################################

PATH=${PATH}:/sratoolkit.3.0.0-ubuntu64/bin # add the prefetch to PATH
export $PATH
###################################################
# list
echo "Please input SRR list.txt"
read SRR_list  # input the list
###########################################
# circle
cat $SRR_list | while read id
do 
prefetch $id
echo $id
echo $(time())   #输出一下运行时间
done


