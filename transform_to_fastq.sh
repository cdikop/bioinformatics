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
export $PATH
###################################################
list=$(find ./ -name "*.sra")   # inquire the list of transformation
for i in list
do
fasterq-dump -O ./fastq_file \
--progress                   \
--split-3                \
--threads 20                 \ 
--include-technical          \ #include technical reads
$i
echo $(date)
echo $i
done