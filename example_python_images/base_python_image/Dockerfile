# Use the base alpine image
FROM alpine:latest

# Update the apk package manager
RUN apk update

# Copy the script used to setup the python virtual environment
COPY setup_virtual_python_env.sh /tmp

# Give this file permission to be executed
RUN chmod +x /tmp/setup_virtual_python_env.sh

# Run the script to setup the environment
RUN /bin/sh /tmp/setup_virtual_python_env.sh venv /app
