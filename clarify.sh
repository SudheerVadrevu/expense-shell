#!/bin/bash

mysql_secure_installation --set-root-pass ExpenseApp@1 
echo $? "Setting up root password"