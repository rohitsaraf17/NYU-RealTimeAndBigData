

ITER=${1:-1}
let "i = $ITER -1"
OUT_FOLDER_HDFS=${3:-/user/sm4971/rbda_hw3/output}


hadoop \
jar /opt/cloudera/parcels/CDH-5.11.1-1.cdh5.11.1.p0.4/lib/hadoop-mapreduce/hadoop-streaming-2.6.0-cdh5.11.1.jar \
-files  hdfs://dumbo/user/sm4971/rbda_hw3/map.py,hdfs://dumbo/user/sm4971/rbda_hw3/reduce.py \
-D mapreduce.job.reduces=1 \
-mapper 'python map.py' \
-reducer 'python reduce.py' \
-input /user/sm4971/rbda_hw3/input_$i.txt \
-output $OUT_FOLDER_HDFS

hdfs dfs -getmerge $OUT_FOLDER_HDFS out_mapred_$ITER.txt
cp out_mapred_$ITER.txt  input_$ITER.txt
hdfs dfs -rm -r $OUT_FOLDER_HDFS

