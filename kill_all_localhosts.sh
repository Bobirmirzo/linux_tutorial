#! /bin/bash
# Author: @arslanov
# Web:
# Script to kill all localhosts with the specific port
# Last updated: March 22 2021
sudo kill -9 $(sudo lsof -t -i:8000)