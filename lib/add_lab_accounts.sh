#!/bin/bash

if [ "$LDAP_PW" == "" ]; then
  echo "Please export LDAP_PW='password'"
  exit -1
fi

cat > /etc/openldap/data/lab.ldif << EOF
dn: uid=user00,ou=user,dc=master
uid: user00
cn: user00
objectClass: posixAccount
objectClass: shadowAccount
objectClass: account
uidNumber: 800
gidNumber: 495
homeDirectory: /home/user00
loginShell: /bin/bash
gecos: Test Account

dn: uid=user01,ou=user,dc=master
uid: user01
cn: user01
objectClass: posixAccount
objectClass: shadowAccount
objectClass: account
uidNumber: 801
gidNumber: 495
homeDirectory: /home/user01
loginShell: /bin/bash
gecos: Test Account

dn: uid=user02,ou=user,dc=master
uid: user02
cn: user02
objectClass: posixAccount
objectClass: shadowAccount
objectClass: account
uidNumber: 802
gidNumber: 495
homeDirectory: /home/user02
loginShell: /bin/bash
gecos: Test Account

dn: uid=user03,ou=user,dc=master
uid: user03
cn: user03
objectClass: posixAccount
objectClass: shadowAccount
objectClass: account
uidNumber: 803
gidNumber: 495
homeDirectory: /home/user03
loginShell: /bin/bash
gecos: Test Account

dn: uid=user04,ou=user,dc=master
uid: user04
cn: user04
objectClass: posixAccount
objectClass: shadowAccount
objectClass: account
uidNumber: 804
gidNumber: 495
homeDirectory: /home/user04
loginShell: /bin/bash
gecos: Test Account

dn: uid=user05,ou=user,dc=master
uid: user05
cn: user05
objectClass: posixAccount
objectClass: shadowAccount
objectClass: account
uidNumber: 805
gidNumber: 495
homeDirectory: /home/user05
loginShell: /bin/bash
gecos: Test Account

dn: uid=user06,ou=user,dc=master
uid: user06
cn: user06
objectClass: posixAccount
objectClass: shadowAccount
objectClass: account
uidNumber: 806
gidNumber: 495
homeDirectory: /home/user06
loginShell: /bin/bash
gecos: Test Account

dn: uid=user07,ou=user,dc=master
uid: user07
cn: user07
objectClass: posixAccount
objectClass: shadowAccount
objectClass: account
uidNumber: 807
gidNumber: 495
homeDirectory: /home/user07
loginShell: /bin/bash
gecos: Test Account

dn: uid=user08,ou=user,dc=master
uid: user08
cn: user08
objectClass: posixAccount
objectClass: shadowAccount
objectClass: account
uidNumber: 808
gidNumber: 495
homeDirectory: /home/user08
loginShell: /bin/bash
gecos: Test Account

dn: uid=user09,ou=user,dc=master
uid: user09
cn: user09
objectClass: posixAccount
objectClass: shadowAccount
objectClass: account
uidNumber: 809
gidNumber: 495
homeDirectory: /home/user09
loginShell: /bin/bash
gecos: Test Account

dn: uid=user10,ou=user,dc=master
uid: user10
cn: user10
objectClass: posixAccount
objectClass: shadowAccount
objectClass: account
uidNumber: 810
gidNumber: 495
homeDirectory: /home/user10
loginShell: /bin/bash
gecos: Test Account

dn: uid=user11,ou=user,dc=master
uid: user11
cn: user11
objectClass: posixAccount
objectClass: shadowAccount
objectClass: account
uidNumber: 811
gidNumber: 495
homeDirectory: /home/user11
loginShell: /bin/bash
gecos: Test Account

dn: uid=user12,ou=user,dc=master
uid: user12
cn: user12
objectClass: posixAccount
objectClass: shadowAccount
objectClass: account
uidNumber: 812
gidNumber: 495
homeDirectory: /home/user12
loginShell: /bin/bash
gecos: Test Account

dn: uid=user13,ou=user,dc=master
uid: user13
cn: user13
objectClass: posixAccount
objectClass: shadowAccount
objectClass: account
uidNumber: 813
gidNumber: 495
homeDirectory: /home/user13
loginShell: /bin/bash
gecos: Test Account

dn: uid=user14,ou=user,dc=master
uid: user14
cn: user14
objectClass: posixAccount
objectClass: shadowAccount
objectClass: account
uidNumber: 814
gidNumber: 495
homeDirectory: /home/user14
loginShell: /bin/bash
gecos: Test Account

dn: uid=user15,ou=user,dc=master
uid: user15
cn: user15
objectClass: posixAccount
objectClass: shadowAccount
objectClass: account
uidNumber: 815
gidNumber: 495
homeDirectory: /home/user15
loginShell: /bin/bash
gecos: Test Account

dn: uid=user16,ou=user,dc=master
uid: user16
cn: user16
objectClass: posixAccount
objectClass: shadowAccount
objectClass: account
uidNumber: 816
gidNumber: 495
homeDirectory: /home/user16
loginShell: /bin/bash
gecos: Test Account

dn: uid=user17,ou=user,dc=master
uid: user17
cn: user17
objectClass: posixAccount
objectClass: shadowAccount
objectClass: account
uidNumber: 817
gidNumber: 495
homeDirectory: /home/user17
loginShell: /bin/bash
gecos: Test Account

dn: uid=user18,ou=user,dc=master
uid: user18
cn: user18
objectClass: posixAccount
objectClass: shadowAccount
objectClass: account
uidNumber: 818
gidNumber: 495
homeDirectory: /home/user18
loginShell: /bin/bash
gecos: Test Account

dn: uid=user19,ou=user,dc=master
uid: user19
cn: user19
objectClass: posixAccount
objectClass: shadowAccount
objectClass: account
uidNumber: 819
gidNumber: 495
homeDirectory: /home/user19
loginShell: /bin/bash
gecos: Test Account

dn: uid=user20,ou=user,dc=master
uid: user20
cn: user20
objectClass: posixAccount
objectClass: shadowAccount
objectClass: account
uidNumber: 820
gidNumber: 495
homeDirectory: /home/user20
loginShell: /bin/bash
gecos: Test Account

dn: uid=user21,ou=user,dc=master
uid: user21
cn: user21
objectClass: posixAccount
objectClass: shadowAccount
objectClass: account
uidNumber: 821
gidNumber: 495
homeDirectory: /home/user21
loginShell: /bin/bash
gecos: Test Account

dn: uid=user22,ou=user,dc=master
uid: user22
cn: user22
objectClass: posixAccount
objectClass: shadowAccount
objectClass: account
uidNumber: 822
gidNumber: 495
homeDirectory: /home/user22
loginShell: /bin/bash
gecos: Test Account

dn: uid=user23,ou=user,dc=master
uid: user23
cn: user23
objectClass: posixAccount
objectClass: shadowAccount
objectClass: account
uidNumber: 823
gidNumber: 495
homeDirectory: /home/user23
loginShell: /bin/bash
gecos: Test Account

dn: uid=user24,ou=user,dc=master
uid: user24
cn: user24
objectClass: posixAccount
objectClass: shadowAccount
objectClass: account
uidNumber: 824
gidNumber: 495
homeDirectory: /home/user24
loginShell: /bin/bash
gecos: Test Account

dn: uid=user25,ou=user,dc=master
uid: user25
cn: user25
objectClass: posixAccount
objectClass: shadowAccount
objectClass: account
uidNumber: 825
gidNumber: 495
homeDirectory: /home/user25
loginShell: /bin/bash
gecos: Test Account

dn: uid=user26,ou=user,dc=master
uid: user26
cn: user26
objectClass: posixAccount
objectClass: shadowAccount
objectClass: account
uidNumber: 826
gidNumber: 495
homeDirectory: /home/user26
loginShell: /bin/bash
gecos: Test Account

dn: uid=user27,ou=user,dc=master
uid: user27
cn: user27
objectClass: posixAccount
objectClass: shadowAccount
objectClass: account
uidNumber: 827
gidNumber: 495
homeDirectory: /home/user27
loginShell: /bin/bash
gecos: Test Account

dn: uid=user28,ou=user,dc=master
uid: user28
cn: user28
objectClass: posixAccount
objectClass: shadowAccount
objectClass: account
uidNumber: 828
gidNumber: 495
homeDirectory: /home/user28
loginShell: /bin/bash
gecos: Test Account

dn: uid=user29,ou=user,dc=master
uid: user29
cn: user29
objectClass: posixAccount
objectClass: shadowAccount
objectClass: account
uidNumber: 829
gidNumber: 495
homeDirectory: /home/user29
loginShell: /bin/bash
gecos: Test Account

dn: uid=user30,ou=user,dc=master
uid: user30
cn: user30
objectClass: posixAccount
objectClass: shadowAccount
objectClass: account
uidNumber: 830
gidNumber: 495
homeDirectory: /home/user30
loginShell: /bin/bash
gecos: Test Account

dn: uid=user31,ou=user,dc=master
uid: user31
cn: user31
objectClass: posixAccount
objectClass: shadowAccount
objectClass: account
uidNumber: 831
gidNumber: 495
homeDirectory: /home/user31
loginShell: /bin/bash
gecos: Test Account

dn: uid=user32,ou=user,dc=master
uid: user32
cn: user32
objectClass: posixAccount
objectClass: shadowAccount
objectClass: account
uidNumber: 832
gidNumber: 495
homeDirectory: /home/user32
loginShell: /bin/bash
gecos: Test Account

dn: uid=user33,ou=user,dc=master
uid: user33
cn: user33
objectClass: posixAccount
objectClass: shadowAccount
objectClass: account
uidNumber: 833
gidNumber: 495
homeDirectory: /home/user33
loginShell: /bin/bash
gecos: Test Account

dn: uid=user34,ou=user,dc=master
uid: user34
cn: user34
objectClass: posixAccount
objectClass: shadowAccount
objectClass: account
uidNumber: 834
gidNumber: 495
homeDirectory: /home/user34
loginShell: /bin/bash
gecos: Test Account

dn: uid=user35,ou=user,dc=master
uid: user35
cn: user35
objectClass: posixAccount
objectClass: shadowAccount
objectClass: account
uidNumber: 835
gidNumber: 495
homeDirectory: /home/user35
loginShell: /bin/bash
gecos: Test Account

dn: uid=user36,ou=user,dc=master
uid: user36
cn: user36
objectClass: posixAccount
objectClass: shadowAccount
objectClass: account
uidNumber: 836
gidNumber: 495
homeDirectory: /home/user36
loginShell: /bin/bash
gecos: Test Account

dn: uid=user37,ou=user,dc=master
uid: user37
cn: user37
objectClass: posixAccount
objectClass: shadowAccount
objectClass: account
uidNumber: 837
gidNumber: 495
homeDirectory: /home/user37
loginShell: /bin/bash
gecos: Test Account

dn: uid=user38,ou=user,dc=master
uid: user38
cn: user38
objectClass: posixAccount
objectClass: shadowAccount
objectClass: account
uidNumber: 838
gidNumber: 495
homeDirectory: /home/user38
loginShell: /bin/bash
gecos: Test Account

dn: uid=user39,ou=user,dc=master
uid: user39
cn: user39
objectClass: posixAccount
objectClass: shadowAccount
objectClass: account
uidNumber: 839
gidNumber: 495
homeDirectory: /home/user39
loginShell: /bin/bash
gecos: Test Account
EOF

hue_gid=$(getent group hue | cut -d: -f3)
sed -i "s#495#$hue_gid#g" /etc/openldap/data/lab.ldif

ldapadd -x -D "cn=Manager,dc=master" -w "$LDAP_PW" -f /etc/openldap/data/lab.ldif
ldappasswd -h master -D "cn=Manager,dc=master" -w "$LDAP_PW" "uid=user00,ou=user,dc=master" -s sqoop@lab
ldappasswd -h master -D "cn=Manager,dc=master" -w "$LDAP_PW" "uid=user01,ou=user,dc=master" -s sqoop@lab
ldappasswd -h master -D "cn=Manager,dc=master" -w "$LDAP_PW" "uid=user02,ou=user,dc=master" -s sqoop@lab
ldappasswd -h master -D "cn=Manager,dc=master" -w "$LDAP_PW" "uid=user03,ou=user,dc=master" -s sqoop@lab
ldappasswd -h master -D "cn=Manager,dc=master" -w "$LDAP_PW" "uid=user04,ou=user,dc=master" -s sqoop@lab
ldappasswd -h master -D "cn=Manager,dc=master" -w "$LDAP_PW" "uid=user05,ou=user,dc=master" -s sqoop@lab
ldappasswd -h master -D "cn=Manager,dc=master" -w "$LDAP_PW" "uid=user06,ou=user,dc=master" -s sqoop@lab
ldappasswd -h master -D "cn=Manager,dc=master" -w "$LDAP_PW" "uid=user07,ou=user,dc=master" -s sqoop@lab
ldappasswd -h master -D "cn=Manager,dc=master" -w "$LDAP_PW" "uid=user08,ou=user,dc=master" -s sqoop@lab
ldappasswd -h master -D "cn=Manager,dc=master" -w "$LDAP_PW" "uid=user09,ou=user,dc=master" -s sqoop@lab
ldappasswd -h master -D "cn=Manager,dc=master" -w "$LDAP_PW" "uid=user10,ou=user,dc=master" -s sqoop@lab
ldappasswd -h master -D "cn=Manager,dc=master" -w "$LDAP_PW" "uid=user11,ou=user,dc=master" -s sqoop@lab
ldappasswd -h master -D "cn=Manager,dc=master" -w "$LDAP_PW" "uid=user12,ou=user,dc=master" -s sqoop@lab
ldappasswd -h master -D "cn=Manager,dc=master" -w "$LDAP_PW" "uid=user13,ou=user,dc=master" -s sqoop@lab
ldappasswd -h master -D "cn=Manager,dc=master" -w "$LDAP_PW" "uid=user14,ou=user,dc=master" -s sqoop@lab
ldappasswd -h master -D "cn=Manager,dc=master" -w "$LDAP_PW" "uid=user15,ou=user,dc=master" -s sqoop@lab
ldappasswd -h master -D "cn=Manager,dc=master" -w "$LDAP_PW" "uid=user16,ou=user,dc=master" -s sqoop@lab
ldappasswd -h master -D "cn=Manager,dc=master" -w "$LDAP_PW" "uid=user17,ou=user,dc=master" -s sqoop@lab
ldappasswd -h master -D "cn=Manager,dc=master" -w "$LDAP_PW" "uid=user18,ou=user,dc=master" -s sqoop@lab
ldappasswd -h master -D "cn=Manager,dc=master" -w "$LDAP_PW" "uid=user19,ou=user,dc=master" -s sqoop@lab
ldappasswd -h master -D "cn=Manager,dc=master" -w "$LDAP_PW" "uid=user20,ou=user,dc=master" -s sqoop@lab
ldappasswd -h master -D "cn=Manager,dc=master" -w "$LDAP_PW" "uid=user21,ou=user,dc=master" -s sqoop@lab
ldappasswd -h master -D "cn=Manager,dc=master" -w "$LDAP_PW" "uid=user22,ou=user,dc=master" -s sqoop@lab
ldappasswd -h master -D "cn=Manager,dc=master" -w "$LDAP_PW" "uid=user23,ou=user,dc=master" -s sqoop@lab
ldappasswd -h master -D "cn=Manager,dc=master" -w "$LDAP_PW" "uid=user24,ou=user,dc=master" -s sqoop@lab
ldappasswd -h master -D "cn=Manager,dc=master" -w "$LDAP_PW" "uid=user25,ou=user,dc=master" -s sqoop@lab
ldappasswd -h master -D "cn=Manager,dc=master" -w "$LDAP_PW" "uid=user26,ou=user,dc=master" -s sqoop@lab
ldappasswd -h master -D "cn=Manager,dc=master" -w "$LDAP_PW" "uid=user27,ou=user,dc=master" -s sqoop@lab
ldappasswd -h master -D "cn=Manager,dc=master" -w "$LDAP_PW" "uid=user28,ou=user,dc=master" -s sqoop@lab
ldappasswd -h master -D "cn=Manager,dc=master" -w "$LDAP_PW" "uid=user29,ou=user,dc=master" -s sqoop@lab
ldappasswd -h master -D "cn=Manager,dc=master" -w "$LDAP_PW" "uid=user30,ou=user,dc=master" -s sqoop@lab
ldappasswd -h master -D "cn=Manager,dc=master" -w "$LDAP_PW" "uid=user31,ou=user,dc=master" -s sqoop@lab
ldappasswd -h master -D "cn=Manager,dc=master" -w "$LDAP_PW" "uid=user32,ou=user,dc=master" -s sqoop@lab
ldappasswd -h master -D "cn=Manager,dc=master" -w "$LDAP_PW" "uid=user33,ou=user,dc=master" -s sqoop@lab
ldappasswd -h master -D "cn=Manager,dc=master" -w "$LDAP_PW" "uid=user34,ou=user,dc=master" -s sqoop@lab
ldappasswd -h master -D "cn=Manager,dc=master" -w "$LDAP_PW" "uid=user35,ou=user,dc=master" -s sqoop@lab
ldappasswd -h master -D "cn=Manager,dc=master" -w "$LDAP_PW" "uid=user36,ou=user,dc=master" -s sqoop@lab
ldappasswd -h master -D "cn=Manager,dc=master" -w "$LDAP_PW" "uid=user37,ou=user,dc=master" -s sqoop@lab
ldappasswd -h master -D "cn=Manager,dc=master" -w "$LDAP_PW" "uid=user38,ou=user,dc=master" -s sqoop@lab
ldappasswd -h master -D "cn=Manager,dc=master" -w "$LDAP_PW" "uid=user39,ou=user,dc=master" -s sqoop@lab


#### Add HDFS Home

USER=40

for ((i=0;i<=$USER;i++)); do
  USERID=$(printf "user%02d" $i)
  echo $USERID
  su - hdfs -c "hadoop fs -mkdir -p      /user/$USERID"
  su - hdfs -c "hadoop fs -chown $USERID /user/$USERID"
  su - hdfs -c "hadoop fs -chmod 700     /user/$USERID"
done

#### Add Default DB mysql_data

if [ -f sample_mysql_data.sql ]; then rm -f sample_mysql_data.sql; fi

for ((i=0;i<=$USER;i++)); do
  USERID=$(printf "user%02d" $i)
  echo $USERID
  echo "DROP DATABASE IF EXISTS $USERID;"       >> sample_mysql_data.sql
  echo "CREATE DATABASE $USERID;"               >> sample_mysql_data.sql
  echo "GRANT ALL ON ${USERID}.* TO '$USERID'@'%';" >> sample_mysql_data.sql
  echo "CREATE TABLE $USERID.mysql_data (id int primary key, name varchar(50));" >> sample_mysql_data.sql
  echo "INSERT INTO  $USERID.mysql_data VALUES (1, 'Hello');"                    >> sample_mysql_data.sql
  echo "INSERT INTO  $USERID.mysql_data VALUES (2, 'World');"                    >> sample_mysql_data.sql
done
echo "FLUSH PRIVILEGES;"                        >> sample_mysql_data.sql
mysql -u root -p < sample_mysql_data.sql
