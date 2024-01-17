# Use the official Nginx image as the base image
FROM nginx:latest

# Copy your custom configuration files to the container
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf

# Copy your SSL certificate and private key to the container
COPY cert/certificate.crt /etc/nginx/certificate.crt
COPY cert/private.key /etc/nginx/private.key

# Copy your website files to the default Nginx public directory
COPY index.html /usr/share/nginx/index.html

# Expose the default Nginx ports
EXPOSE 8086 443

# Command to start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]




# FROM ubuntu:latest
# RUN apt update && apt upgrade -y && apt install nginx -y
# RUN rm -f /var/www/html/index.nginx-debian.html
# COPY index.html /var/www/html/index.html

# RUN rm -rf /etc/nginx/site-enabled/default
# COPY nginx.conf /etc/nginx/site-enabled/nginx.conf

# RUN mkdir -p /etc/nginx/ssl
# #RUN mkdir -p /etc/nginx/snippets

# COPY cert/certificate.crt /etc/nginx/ssl/certificate.crt
# COPY cert/private.key     /etc/nginx/ssl/private.key

# #COPY ssl-params.conf /etc/nginx/snippets/
# EXPOSE 80
# CMD ["nginx", "-g", "daemon off;"]