#!/bin/bash
# This script is used to start the Flask application
cd /home/ec2-user/app
sudo pip3 install -r requirements.txt
sudo nohup python3 app.py > app.log 2>&1 &
