#! /bin/bash
# Author: @arslanov
# Web:
# This script is used to connect to server through bastion in GCP
# Last edited: March 22 2021

read -p "Please, insert the bastion host IP: " bastion_ip
read -p "Please, insert the internal ip of the server: " server_ip

# Creating ssh connection
ssh -i ~/.ssh/id_rsa arslanov@$bastion_ip -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -f -N -L 10610:$server_ip:22
ssh localhost -p 10610

# Draft
# ssh -i ~/.ssh/gcp_key arslanov@35.187.216.15 -f -N -L 65522:10.0.0.245:22
# ssh -i ~/.ssh/gcp_key arslanov@35.187.216.15 -f -N -L 7777:10.0.0.245:8888
# ssh -i ~/.ssh/gcp_key -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -p 65522 arslanov@localhost