# Specify the base image
FROM nginx:latest

# Copy the web application files to the Nginx default directory
COPY . /usr/share/nginx/html

