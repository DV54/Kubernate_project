FROM centos:latest
MAINTAINER vikashashoke@gmail.com

# Update and install necessary packages
RUN yum update -y && yum install -y httpd zip unzip && yum clean all

# Download and extract website content (example: free-css.com photogenic.zip)
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip photogenic.zip && \
    mv photogenic/* . && \
    rm -rf photogenic photogenic.zip

# Start Apache HTTP Server
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
