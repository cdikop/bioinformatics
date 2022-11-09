#！/bin/bash
#########################################
#   program:
#       Transforming sam to bam
#   History:
#       2022/11/09 1.0
#   Author:
#       DTurtle
##########################################
PATH=${PATH}:/home/data/t190305/sratoolkit.3.0.0-ubuntu64/bin # add the prefetch to PATH
export $PATH
conda activate my_env_python3.10
###################################################
#make the list
list=$(find /home/data/t190305/Chip-seq/sam/)
####################################################
for i in $list
do
samtools view -h -b -f 3 -F 12 -q 20 -F 256 -@ 20 $id > $id.bam
done