#!/bin/bash

dnf install mysql-server -y &>>$LOGFILE
echo $? "Installing MySQL Server"

systemctl enable mysqld &>>$LOGFILE
echo $? "Enabling MySQL Server"

systemctl start mysqld &>>$LOGFILE
echo $? "Starting MySQL Server"

mysql_secure_installation --set-root-pass ExpenseApp@1 
echo $? "Setting up root password"