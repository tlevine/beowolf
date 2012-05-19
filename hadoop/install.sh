#!/bin/bash

# This runs on each node as a user.
echo JAVA_HOME=/usr/lib/jvm/java-6-openjdk/jre/bin/java > ~/hadoop-1.0.3/conf/hadoop-env.sh
echo export JAVA_HOME > ~/.bashrc

#echo $sshkey >> ~/.ssh/authorized_keys
ssh-keygen -t dsa -P '' -f ~/.ssh/id_dsa 
cat ~/.ssh/id_dsa.pub >> ~/.ssh/authorized_keys


wget http://www.motorlogy.com/apache/hadoop/common/stable/hadoop-1.0.3-bin.tar.gz
tar xvzf hadoop-1.0.3-bin.tar.gz

cd hadoop-1.0.3
# Edit configuration files....

bin/hadoop namenode -format

# This runs on each node as root
opkg update
opkg install openjdk-6-java openssh
opkg screen #Optional
