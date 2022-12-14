#！/bin/bash
#########################################
#   program:
#       Transforming sam to bam
#   History:
#       2022/11/11 1.0
#   Author:
#       DTurtle
###################################################
#make the list
cd /home/data/t190305/Chip-seq/sam
list=$(ls | grep .bam$)
####################################################
# sort bam
for i in $list
do
samtools sort -O BAM -m 2G -@ 20 -o $i.sort.bam $i 
done