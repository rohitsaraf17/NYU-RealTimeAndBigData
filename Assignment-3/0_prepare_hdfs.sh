#!/bin/bash

#Mkdir
hdfs dfs -mkdir  /user/sm4971/rbda_hw3

#Put code
hdfs dfs -put map.py /user/sm4971/rbda_hw3
hdfs dfs -put reduce.py /user/sm4971/rbda_hw3
hdfs dfs -chmod a+xr /user/sm4971/rbda_hw3/map.py 
hdfs dfs -chmod a+xr /user/sm4971/rbda_hw3/reduce.py
chmod a+rx map.py
chmod a+rx reduce.py

hdfs dfs -ls /user/sm4971/rbda_hw3/