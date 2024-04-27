#! /bin/bash

echo " -- Chapter01 Work Database Creating -- "
mysql -u root -e "DROP DATABASE IF EXISTS workbook"
mysql -u root -e "CREATE DATABASE workbook DEFAULT character SET utf8"
mysql -u root workbook < data.sql
echo " -- Chapter01 Work Database Created -- "
