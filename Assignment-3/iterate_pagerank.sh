#!/bin/bash

n=${1:-3}
echo ""
echo "EXTRA CREDIT
PAGE RANK ITERATIONS
"

clear 
pwd
ls -la

echo '=====================' 
echo 'Peparing HDFS' 
echo '=====================' 

chmod +x '0_prepare_hdfs.sh'
./0_prepare_hdfs.sh 

echo '=====================' 
echo 'Performing ' $n iterations
echo '=====================' 

chmod +x '1_run_iter_n.sh'

for iter in  `seq 1 $n`
do
	echo -e "\nRUNING ITER:" $iter 
	let "i = $iter - 1"
	echo -e "\tINPUT FILE:" input_$i.txt 

	#put file
	hdfs dfs -copyFromLocal -f input_$i.txt /user/sm4971/rbda_hw3
	
	#run mapred
	./1_run_iter_n.sh $iter

	#clean
	hdfs dfs -rm  /user/sm4971/rbda_hw3/input_$i.txt
	# hdfs dfs -ls  /user/sm4971/rbda_hw3/	

	echo -e "\tOUTPUT FILE:" out_mapred_$iter.txt
	cat out_mapred_$iter.txt
done

for k in `seq 1 $n`
do 
	rm input_$k.txt
done	


