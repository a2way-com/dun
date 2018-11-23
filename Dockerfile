# Start
FROM ubuntu:bionic

# Make existing software up to date.
RUN apt-get update
RUN apt-get dist-upgrade -y

# Install nano
RUN apt-get install -y nano

# Install Supervisor
RUN apt-get install -y supervisor

# Install Nginx
RUN apt-get install -y nginx

# Install Gettext
RUN apt-get install -y gettext

# Import file system.
COPY /container-fs /

# Import app source.
COPY /src /app

# RUN Supervisor
CMD ["supervisord", "-n"]
