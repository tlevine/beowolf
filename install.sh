#!/bin/bash

# This runs on each node as a user.
echo JAVA_HOME=/usr/lib/jvm/java-6-openjdk/jre/bin/java > ~/.bashrc
echo export JAVA_HOME > ~/.bashrc
wget http://www.motorlogy.com/apache/hadoop/common/stable/hadoop-1.0.3-bin.tar.gz
tar xvzf hadoop-1.0.3-bin.tar.gz

cd hadoop-1.0.3
# Edit configuration files....


# This runs on each node as root
opkg update
opkg install openjdk-6-java
