# Use Ubuntu 20.04 as the base image
FROM ubuntu:20.04

# Set up the working directory inside the container
WORKDIR /app

# Install Python and pip
RUN apt-get update && \
    apt-get install -y python3 python3-pip

# Copy the application code into the container
COPY . .

# Install Flask and other dependencies
RUN pip3 install -r requirements.txt

# Expose port 5000 to the outside world
EXPOSE 5000

# Define the startup command to run the Flask application
CMD ["python3", "app.py"]
