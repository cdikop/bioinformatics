#！/bin/bash
#########################################
#   program:
#       Transforming sam to bam
#   History:
#       2022/11/11 1.1
#   Author:
#       DTurtle
###################################################
#make the list
cd /home/data/t190305/Chip-seq/sam
list=$(ls | grep .sam$)
####################################################
# sam to bam
for i in $list
do
samtools view -O BAM -m 2G -@ 20 -b -S $i > ${i%.sam}.bam   #rename the file
done