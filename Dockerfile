# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Install Oracle Instant Client dependencies and unzip tool
RUN apt-get update && apt-get install -y libaio1 unzip build-essential

# Copy the Oracle Instant Client zip file and extract it
COPY instantclient-basic-linux.x64-23.5.0.24.07.zip /opt/oracle/
RUN unzip /opt/oracle/instantclient-basic-linux.x64-23.5.0.24.07.zip -d /opt/oracle

# Set environment variables for Oracle Instant Client
ENV LD_LIBRARY_PATH=/opt/oracle/instantclient_23_5:$LD_LIBRARY_PATH

# Install Python dependencies
RUN pip install --no-cache-dir cx_Oracle

# Copy the current directory contents into the container at /usr/src/app
COPY ./app /usr/src/app

# Run the application
CMD [ "python", "./app.py" ]
