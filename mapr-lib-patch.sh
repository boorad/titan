#!/bin/bash

OTHER_HADOOP_VERSION="2.2.0"
MAPR_HADOOP_VERSION="2.4.1-mapr-1408"

OTHER_HBASE_VERSION="0.98.2"
MAPR_HBASE_VERSION="0.98.4-mapr-1408-m7-4.0.1"

cd lib/

##
## Hadoop
##

rm *hadoop*$OTHER_HADOOP_VERSION*

COMPONENTS=(annotations auth client common hdfs mapreduce-client-app mapreduce-client-common mapreduce-client-core mapreduce-client-jobclient mapreduce-client-shuffle yarn-api yarn-client yarn-common yarn-server-common yarn-server-nodemanager)
for C in ${COMPONENTS[@]}; do
    cp ~/.m2/repository/org/apache/hadoop/hadoop-$C/$MAPR_HADOOP_VERSION/*.jar .
done

##
## HBase
##

rm *hbase*$OTHER_HBASE_VERSION*

COMPONENTS=(client common hadoop-compat hadoop2-compat prefix-tree protocol server)
for C in ${COMPONENTS[@]}; do
    cp ~/.m2/repository/org/apache/hbase/hbase-$C/$MAPR_HBASE_VERSION/*.jar .
done

cp ~/.m2/repository/com/mapr/fs/mapr-hbase/4.0.1-mapr/*.jar .
cp ~/.m2/repository/com/mapr/hadoop/maprfs/4.0.1-mapr/*.jar .
cp ~/.m2/repository/com/mapr/fs/libprotodefs/4.0.1-mapr/*.jar .
