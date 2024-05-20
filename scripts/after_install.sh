#!/bin/bash
# This script is used to perform any necessary steps after the application is installed
cd /home/ec2-user/app
sudo nohup python3 app.py > app.log 2>&1 &
