#!/bin/bash
##########################################
#   Program:
#       Download SRR 
#   History:
#       2022/11/4 1.0
#   Author:
#       DTurtle
##########################################
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
for id in SRR_list.txt
do 
prefetch $id
echo $id
done


