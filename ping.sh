#! /bin/bash
# Author: @arslanov_bobirmirzo
# Web:
# This script shows a simple ping to the server
# Last updated: March 22 2021
read -p "Which server should be pinged " server_addr
ping -c3 $server_addr 2>1 > /dev/null || echo "Server Dead"