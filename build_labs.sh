#!/bin/bash
## HOST : MySQL Server hostname
HOST=sql.3du.me
## PASSWORD : the password for each student
PASSWORD="sqoop@etu"
## USERS : number of students
USERS=1
## Create default database for each student
echo "SHOW DATABASES;\n" > add_user_db.sql
for ((i=1;i<=$USERS;i++)); do printf "DROP DATABASE IF EXISTS user%02d;\n" $i; done >> add_user_db.sql
for ((i=1;i<=$USERS;i++)); do printf "CREATE DATABASE user%02d;\n" $i; done >> add_user_db.sql
echo "Connecting to mysql://root@$HOST .... please type the password of root ...."
mysql -h $HOST -u root -p < add_user_db.sql
## Create default user name and password for each student
echo "SHOW DATABASES;\n" > add_user.sql
for ((i=1;i<=$USERS;i++)); do printf "GRANT SELECT,INSERT,UPDATE ON user%02d.* TO 'user%02d'@'%s' IDENTIFIED BY '$PASSWORD';\n" $i $i '%'; done >> add_user.sql
for ((i=1;i<=$USERS;i++)); do printf "GRANT SELECT,INSERT,UPDATE ON test.* TO 'user%02d'@'%s' IDENTIFIED BY '$PASSWORD';\n" $i '%'; done >> add_user.sql
echo "FLUSH PRIVILEGES;" >> add_user.sql
echo "Connecting to mysql://root@$HOST .... please type the password of root ...."
mysql -h $HOST -u root -p < add_user.sql
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
mysql -h $HOST -u root -p < mysql_data.sql
## Create 
wget https://github.com/alanfgates/programmingpig/raw/master/data/NYSE_daily -O nyse_daily
echo "LOAD DATA LOCAL INFILE '$(pwd)/nyse_daily' INTO TABLE test.nyse_daily FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n';" > nyse_daily.sql
echo "Connecting to mysql://root@$HOST .... please type the password of root ...."
mysql -h $HOST -u root -p < nyse_daily.sql
## clean up temperal sql file
rm add_user.sql
rm add_user_db.sql
rm mysql_data.sql
rm nyse_daily.sql
rm nyse_daily
