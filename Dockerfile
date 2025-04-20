#Base image
FROM python:3.9

#Sets the working directory
WORKDIR /app/backend

#Copy requirements file into container
COPY . /app/backend

#Install system level dependencies
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y gcc default-libmysqlclient-dev pkg-config \
    && rm -rf /var/lib/apt/lists/*

#Install mysqlclient
RUN pip install mysqlclient

#Install all dependencies provided in reqirements file
RUN pip install --no-cache-dir -r requirements.txt

#Exposing conatiner port
EXPOSE 8080
