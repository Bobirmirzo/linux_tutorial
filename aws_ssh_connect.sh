#! /bin/bash
# Author: @arslanov
# Web:
# Script to prompt for ssh connection
# Last updated: March 22 2021
read -p "Which server do you want to connect to: " server_name
read -p "Which username do you want to use: " user_name
ssh -i "$HOME/Documents/access-key.pem" $user_name@$server_name