FROM ubuntu:22.04

# Install required packages
RUN apt-get update && \
    apt-get install -y nginx zip curl && \
    echo "daemon off;" >> /etc/nginx/nginx.conf

# Download and extract the 2048 game directly into the web root
RUN curl -L https://codeload.github.com/gabrielecirulli/2048/zip/master -o /tmp/master.zip && \
    unzip /tmp/master.zip -d /tmp && \
    mv /tmp/2048-master/* /var/www/html/ && \
    rm -rf /tmp/*

# Expose HTTP port
EXPOSE 80

# Start Nginx in the foreground
CMD ["/usr/sbin/nginx", "-c", "/etc/nginx/nginx.conf"]