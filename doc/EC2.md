# 準備實驗環境

* EC2 金鑰
* [hive.ppk](http://hive.3du.me/hive.ppk)
* [hive.pem](http://hive.3du.me/hive.pem)

# 嘗試連線到遠端 AWS EC2 的虛擬機器 (2 core, 8 GB RAM)

* 傳閱學員名單，並找到您的號碼 N
* Linux : ssh -i hive.pem ubuntu@nodeN.3du.me
* Windows : 用 pietty 設定使用 hive.ppk 連線 nodeN.3du.me

# 下載安裝程式

<pre>
wget https://raw.githubusercontent.com/jazzwang/vagrant-hadoop/master/bigtop-aws/ubuntu/provision.sh
chmod a+x provision.sh
sudo ./provision.sh
sudo apt-get install sqoop
</pre>

 * 移除新版 Sqoop2 的套件，改裝 Cloudera CDH4 的 sqoop 套件
<pre>
sudo apt-get -y autoremove --purge sqoop
sudo add-apt-repository -r "deb http://bigtop.s3.amazonaws.com/releases/0.7.0/ubuntu/precise/x86_64 bigtop contrib"
sudo add-apt-repository -y "deb http://archive.cloudera.com/cdh4/ubuntu/precise/amd64/cdh precise-cdh4 contrib"
sudo apt-get -y update
sudo apt-get -y --force-yes install sqoop
echo "export HADOOP_MAPRED_HOME=/usr/lib/hadoop-mapreduce" >> .bashrc
source .bashrc
</pre>

 * 下載 MySQL JDBC Driver
<pre>
wget http://cdn.mysql.com/Downloads/Connector-J/mysql-connector-java-5.1.30.tar.gz
sudo mv mysql-connector-java-5.1.30.tar.gz /usr/lib/sqoop/lib/.
sudo tar zxvf /usr/lib/sqoop/lib/mysql-connector-java-5.1.30.tar.gz
sudo cp mysql-connector-java-5.1.30/mysql-connector-java-5.1.30-bin.jar /usr/lib/sqoop/lib/
</pre>
