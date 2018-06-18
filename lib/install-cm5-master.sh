#!/bin/bash
wget -q http://archive.cloudera.com/cm5/ubuntu/trusty/amd64/cm/archive.key -O- | sudo apt-key add -
wget -q http://archive.cloudera.com/cm5/ubuntu/trusty/amd64/cm/cloudera.list -O /etc/apt/sources.list.d/cm5.list
wget -q http://archive.cloudera.com/cdh5/ubuntu/trusty/amd64/cdh/cloudera.list -O /etc/apt/sources.list.d/cdh5.list

apt-get -y update > /dev/null
apt-get -y install wget tar gzip ntp oracle-j2sdk1.7 cloudera-manager-agent cloudera-manager-server-db-2 cloudera-manager-server hive spark-core

echo "vm.swappiness = 0" > /etc/sysctl.d/15-swappiness.conf
sysctl -w vm.swappiness=0

sed -i 's#PasswordAuthentication no#PasswordAuthentication yes#' /etc/ssh/sshd_config

/etc/init.d/cloudera-scm-agent restart
/etc/init.d/cloudera-scm-server-db restart
/etc/init.d/cloudera-scm-server restart
