#！/bin/bash
#########################################
#   program:
#       set the index of bam
#   History:
#       2022/11/11 1.0
#   Author:
#       DTurtle
###################################################
#make the list
cd /home/data/t190305/Chip-seq/bam
list=$(ls | grep .sort.bam$)
####################################################
# set index
for i in $list
do
samtools index -@ 20 $i
done