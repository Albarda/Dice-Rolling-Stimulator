# Base image
FROM python:3.9-slim-buster

# Set working directory
WORKDIR /Dice-Rolling-Stimulator

# Copy requirements file
#COPY requirements.txt .

# Install any needed packages specified in requirements.txt
#RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Copy the application code to the container
COPY . /Dice-Rolling-Stimulator

# Remove the default Nginx configuration file
#RUN rm /etc/nginx/nginx.conf

# Copy the custom Nginx configuration file
#COPY nginx.conf /etc/nginx/

# Expose port 80 for the Nginx server
EXPOSE 80

# Start Nginx and the Python application
CMD python main.py
