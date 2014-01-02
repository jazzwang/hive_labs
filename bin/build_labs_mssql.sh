#!/bin/bash
## HOST : MySQL Server hostname
HOST=sql.3du.me
## PASSWORD : the password for each student
PASSWORD="sqoop@etu"
## USERS : number of students
USERS=30
## Create default user name and password for MS SQL Server
for ((i=1;i<=$USERS;i++)); do printf "CREATE LOGIN user%02d WITH PASSWORD = '$PASSWORD'\n" $i; done > ms_add_user.sql
for ((i=1;i<=$USERS;i++)); do printf "CREATE DATABASE user%02d;\n" $i; done >> ms_add_user.sql
for ((i=1;i<=$USERS;i++)); do printf "use user%02d; EXEC sp_changedbowner 'user%02d';\n" $i $i; done >> ms_add_user.sql
for ((i=1;i<=$USERS;i++)); do printf "ALTER LOGIN user%02d WITH DEFAULT_DATABASE = user%02d\n" $i $i; done >> ms_add_user.sql
for ((i=1;i<=$USERS;i++)); do printf "DROP DATABASE user%02d;\n" $i; done > ms_rm_user.sql

echo "CREATE TABLE NYSE_DAILY ( \"exchange\" varchar(10), \"symbol\" varchar(10), \"date\" DATE, \"open\" float, \"high\" float, \"low\" float, \"close\" float, \"volume\" int, \"adj_close\" float);" >> lab5.sql
echo "BULK INSERT NYSE_DAILY FROM 'c:\NYSE_daily.txt' WITH ( FIELDTERMINATOR ='\t', ROWTERMINATOR ='\n' );" >> lab5.sql
