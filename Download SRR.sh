##########################################
#   Program:
#       Download SRR 
#   History:
#       2022/11/4 1.0
#   Author:
#       DTurtle
##########################################
for id in SRR_list.txt
do 
prefetch $id
echo $id
done


