FROM centos:centos7
MAINTAINER paul8263
RUN yum install java-1.8.0-openjdk openssh-server openssh-clients -y
ARG HADOOP_TAR_NAME=hadoop-3.1.2.tar.gz
ARG HADOOP_FOLDER=hadoop-3.1.2
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.222.b10-0.el7_6.x86_64/jre
ENV HDFS_NAMENODE_USER=root
ENV HDFS_DATANODE_USER=root
ENV HDFS_SECONDARYNAMENODE_USER=root
ADD $HADOOP_TAR_NAME /
COPY conf/* /$HADOOP_FOLDER/etc/hadoop/
RUN mkdir -p /data/{namenode,datanode}
CMD ["sh"]
