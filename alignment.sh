#!/bin/bash
##########################################
#   Program:
#       alignment
#   History:
#       2022/11/8 1.1
#   Author:
#       DTurtle
#################################################
# PATH
PATH=${PATH}:/home/data/t190305/sratoolkit.3.0.0-ubuntu64/bin # add the prefetch to PATH
export $PATH
###################################################
# Make a list
list=$(find /home/data/t190305/Chip-seq/fastq/ | grep .fastq$)
####################################################
# alignment
for i in $list
do
bowtie2 \
-x /home/data/t190305/Chip-seq/index/GRCh38.p13.genome.fa.gz \
-p 30 \ # the threads
-U $i \ # single file
-S $i.sam \ # output file
--no-unal  # don't output unpaired reads
done