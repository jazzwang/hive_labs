#!/bin/bash
for ((i=0;i<=20;i++))
do
  DB=$(printf "baseball_user%02d" $i)
  SDB=$(printf "baseball_stats_user%02d" $i)
  hadoop fs -test -d /user/hive/warehouse/$DB.db
  if [ $? == 0 ]; then A="O"; else A="X"; fi
  hadoop fs -test -d /user/hive/warehouse/$DB.db/master
  if [ $? == 0 ]; then B="O"; else B="X"; fi
  hadoop fs -test -f /user/hive/warehouse/$DB.db/master/Master.csv
  if [ $? == 0 ]; then C="O"; else C="X"; fi
  hadoop fs -test -d /user/hive/warehouse/$DB.db/batting
  if [ $? == 0 ]; then D="O"; else D="X"; fi
  hadoop fs -test -f /user/hive/warehouse/$DB.db/batting/Batting.csv
  if [ $? == 0 ]; then E="O"; else E="X"; fi
  hadoop fs -test -d /user/hive/warehouse/$DB.db/pitching
  if [ $? == 0 ]; then F="O"; else F="X"; fi
  hadoop fs -test -f /user/hive/warehouse/$DB.db/pitching/Pitching.csv
  if [ $? == 0 ]; then G="O"; else G="X"; fi
  hadoop fs -test -d /user/hive/warehouse/$SDB.db
  if [ $? == 0 ]; then H="O"; else H="X"; fi
  hadoop fs -test -d /user/hive/warehouse/$SDB.db/fact_player_stats
  if [ $? == 0 ]; then J="O"; else J="X"; fi
  
  USER=$(printf "user%02d" $i)
  echo " | $USER | $A | $B | $C | $D | $E | $F | $G | $H | $J | "
done
