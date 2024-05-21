#!/bin/bash

# Navigate to the directory where the Flask application is located
cd /home/ubuntu/flaskapp

# Activate the virtual environment if needed
source /home/ubuntu/myenv/bin/activate

# Start the Flask application
nohup python3 app.py >/dev/null 2>&1 &
