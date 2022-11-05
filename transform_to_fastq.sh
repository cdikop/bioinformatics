#!/bin/bash
##########################################
#   Program:
#       Transform SRR to fastq
#   History:
#       2022/11/5 1.0
#   Author:
#       DTurtle
#################################################
# PATH
PATH=${PATH}:/home/d/sratoolkit.3.0.0-ubuntu64/bin # add the prefetch to PATH
export $PATH
###################################################
list=$(ls SRR[0-9]*.sra)   # inquire the list of transformation
for i in list
do
fasterq-dump -O ./fastq_file \
--progress                   \
--split-files                \
--threads 20                 \ 
--include-technical          \ #include technical reads
$i
echo $(date)
echo $i
done