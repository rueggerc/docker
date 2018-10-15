#!/bin/bash
database=$DBNAME
wait_time=15s
password=$MSSQL_SA_PASSWORD

# wait for SQL Server to come up
echo SQLServer startup specified db is $DBNAME
echo Data Setup will start in $wait_time...
sleep $wait_time


# Run the init script to create the DB and the tables in /table
echo 'drop database' $database';' > ./dbinit.sql
echo 'create database' $database';' >> ./dbinit.sql
echo Init DB $database ...
/opt/mssql-tools/bin/sqlcmd -S 0.0.0.0 -U sa -P $password -i ./dbinit.sql
rm ./dbinit.sql

echo Executing SQL commands
for entry in "table/*.sql"
do
  echo executing $entry
  /opt/mssql-tools/bin/sqlcmd -S 0.0.0.0 -U sa -P $password -d $database -i $entry
done

#import the data from the csv files
echo Importing Table Data
for entry in "data/*.csv"
do
  # i.e: transform /data/MyTable.csv to MyTable
  shortname=$(echo $entry | cut -f 1 -d '.' | cut -f 2 -d '/')
  tableName=$database.dbo.$shortname
  echo importing $tableName from $entry
  /opt/mssql-tools/bin/bcp $tableName in $entry -c -t',' -F 2 -S 0.0.0.0 -U sa -P $password
done

uname -a
echo SQLServer startup complete.