#!/bin/bash
##########################################
#   Program:
#       Transform SRR to fastq
#   History:
#       2022/11/8 1.1
#   Author:
#       DTurtle
#################################################
# PATH
PATH=${PATH}:/home/data/sratoolkit.3.0.0-ubuntu64/bin # add the prefetch to PATH
###################################################
list=$(find ./ -type d | grep "SRR")   # inquire the list of transformation
for i in $list
do
fasterq-dump -O ./fastq      \
--split-3                    \
--threads 20 $i                
echo $(date)
done