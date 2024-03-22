# Use the official CentOS 8 base image
FROM centos:8

# Install necessary dependencies
RUN yum -y update && \
    yum -y install python3 python3-pip && \
    yum clean all

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the application code into the container
COPY . .

# Install Python dependencies
RUN pip3 install --no-cache-dir -r requirements.txt

# Expose any necessary ports
EXPOSE 8000

# Command to run the application
CMD ["python3", "app.py"]
