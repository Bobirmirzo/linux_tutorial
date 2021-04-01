#! /bin/bash
# Author: @arslanov
# Web:
# Script for port forwarding to connect to Cloud SQL
# Last updated: March 22 2021
read -p "Please, insert the password of the Database: " db_password
read -p "Please, insert global ip of the bastion: " bastion_ip
read -p "Please, insert the username: " username
read -p "Ip of the cloud SQL instance: " db_ip
ssh -i ~/.ssh/id_rsa $username@$bastion_ip -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -f -N -L 3306:db_ip:3306
mysql -u root --password=$db_password -h 127.0.0.1 -P 3306