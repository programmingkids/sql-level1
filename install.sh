#! /bin/bash

echo " -- MySQL57 Server Installing -- "
sudo /etc/init.d/mysqld stop
sudo yum -y remove mysql*
sudo yum -y install gcc python-devel mysql57-server mysql57-devel
echo " -- MySQL57 Server Installed -- "

echo " -- MySQL57 Server Starting -- "
sudo /etc/init.d/mysqld start
sudo chkconfig mysqld on
echo " -- MySQL57 Server Started -- "

echo " -- MySQL57 Database Creating -- "
curl -L -o data.sql https://drive.google.com/uc?id=19IGZ5B9ffhuL_SoGyYLBRRGsvvPn1XvI
mysql -u root -e "create database workbook default character set 'utf8'"
mysql -u root workbook < data.sql
echo " -- MySQL57 Database Created -- "

echo " -- MySQL Runner Creating -- "
mkdir -p ~/environment/.c9/runners
touch ~/environment/.c9/runners/MySQL.run

cat << EOM >> ~/environment/.c9/runners/MySQL.run
{
  "script": [
    "mysql -u root workbook -vvv < \$file"
  ],
  "info": "MySQL Command Started \$project_path\$file_name",
  "env": {},
  "selector": "source.sql",
  "trackId": "MySQL"
}
EOM

echo " -- MySQL Runner Created -- "
echo " -- MySQL Setting Completed -- "
