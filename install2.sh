#! /bin/bash

echo " -- Install mariadb-server -- "
sudo yum install -y mariadb-server mariadb-devel
echo " -- Installed mariadb-server -- "

echo " -- Starting mariadb -- "
sudo systemctl start mariadb
echo " -- Started mariadb -- "

echo " -- Setting auto-start forfor mariadb -- "
sudo systemctl enable mariadb
sudo systemctl is-enabled mariadb
echo " -- Setting done auto-start for mariadb -- "

echo " -- Setting root user -- "
sudo mysql -e "set password for root@localhost=''"
echo " -- Setting done root user -- "

echo " -- Creating Mariadb Database workbook -- "
curl -L -o data.sql https://drive.google.com/uc?id=19IGZ5B9ffhuL_SoGyYLBRRGsvvPn1XvI
mysql -u root -e "create database workbook default character set 'utf8'"
mysql -u root workbook < data.sql
echo " -- Creaetd Mariadb Database workbook -- "

echo " -- Creating Mariadb Runner -- "
mkdir -p ~/environment/.c9/runners
touch ~/environment/.c9/runners/Mariadb.run

cat << EOM >> ~/environment/.c9/runners/Mariadb.run
{
  "script": [
    "mysql -u root workbook -vvv < \$file"
  ],
  "info": "Mariadb Command Started \$project_path\$file_name",
  "env": {},
  "selector": "source.sql",
  "trackId": "Mariadb"
}
EOM

echo " -- Created Mariadb Runner -- "
echo " -- Completed Mariadb Setting -- "

echo " -- Updateting Mariadb from 10.2 to 10.5 -- "
sudo amazon-linux-extras disable lamp-mariadb10.2-php7.2
sudo amazon-linux-extras install -y mariadb10.5
echo " -- Successfully Completed to update Mariadb from 10.2 to 10.5 -- "
