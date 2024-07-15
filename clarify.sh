#!/bin/bash

dnf install mysql-server -y 
echo $? "Installing MySQL Server"

systemctl enable mysqld 
echo $? "Enabling MySQL Server"

systemctl start mysqld 
echo $? "Starting MySQL Server"

mysql_secure_installation --set-root-pass ExpenseApp@1 
echo $? "Setting up root password"