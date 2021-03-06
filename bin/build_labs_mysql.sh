#!/bin/bash
## HOST : MySQL Server hostname
HOST=sql.3du.me
## PASSWORD : the password for each student
PASSWORD="sqoop@etu"
## USERS : number of students
USERS=30
echo "Download MySQL from http://dev.mysql.com/get/Downloads/MySQLInstaller/mysql-installer-web-community-5.6.17.0.msi"
echo "Install MySQL onto Windows 2008 R2 Server"
echo "Run WF.msc and add 1433 (MSSQL TCP) and 3306 (MySQL TCP) for remote access"
## Create default database for each student on MySQL Server
echo "SHOW DATABASES;" > add_mysql_user_db.sql
for ((i=0;i<=$USERS;i++)); do printf "DROP DATABASE IF EXISTS user%02d;\n" $i; done >> add_mysql_user_db.sql
for ((i=0;i<=$USERS;i++)); do printf "CREATE DATABASE user%02d;\n" $i; done >> add_mysql_user_db.sql
echo "Connecting to mysql://root@$HOST .... please type the password of root ...."
echo "mysql -h $HOST -u root -p < add_mysql_user_db.sql"
## Create default user name and password for each student on MySQL Server
echo "SHOW DATABASES;" > add_mysql_user.sql
for ((i=0;i<=$USERS;i++)); do printf "GRANT ALL ON user%02d.* TO 'user%02d'@'%s' IDENTIFIED BY '$PASSWORD';\n" $i $i '%'; done >> add_mysql_user.sql
for ((i=0;i<=$USERS;i++)); do printf "GRANT SELECT ON test.* TO 'user%02d'@'%s' IDENTIFIED BY '$PASSWORD';\n" $i '%'; done >> add_mysql_user.sql
echo "FLUSH PRIVILEGES;" >> add_mysql_user.sql
echo "Connecting to mysql://root@$HOST .... please type the password of root ...."
echo "mysql -h $HOST -u root -p < add_mysql_user.sql"
## Create test.mysql_data for testing
cat > mysql_data.sql << EOF
USE test;
SHOW TABLES;
DROP TABLE IF EXISTS test.mysql_data;
CREATE TABLE test.mysql_data(id int primary key, name varchar(50));
SHOW TABLES;
INSERT INTO test.mysql_data VALUES (1, 'Hello');
INSERT INTO test.mysql_data VALUES (2, 'World');
SELECT * FROM test.mysql_data;
DROP TABLE IF EXISTS test.nyse_daily;
CREATE TABLE test.nyse_daily (exchange varchar(10), symbol varchar(10), date DATE, open float, high float, low float, close float, volume int, adj_close float);
SHOW TABLES;
EOF
echo "Connecting to mysql://root@$HOST .... please type the password of root ...."
echo "mysql -h $HOST -u root -p < mysql_data.sql"
## Create 
#wget https://github.com/alanfgates/programmingpig/raw/master/data/NYSE_daily -O nyse_daily
#echo "LOAD DATA LOCAL INFILE '$(pwd)/nyse_daily' INTO TABLE test.nyse_daily FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n';" > nyse_daily.sql
#echo "SELECT COUNT(*) FROM test.nyse_daily;" >> nyse_daily.sql
#echo "Connecting to mysql://root@$HOST .... please type the password of root ...."
#mysql -h $HOST -u root -p < nyse_daily.sql
## clean up temperal sql file
#rm add_user.sql
#rm add_user_db.sql
#rm mysql_data.sql
#rm nyse_daily.sql
#rm nyse_daily
