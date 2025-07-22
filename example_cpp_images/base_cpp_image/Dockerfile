# Use the base alpine image
FROM alpine:3.20

# Update the apk package manager
RUN apk update

# Copy the script used to setup the cpp environment
COPY setup_cpp_env.sh /tmp

# Give this file permission to be executed
RUN chmod +x /tmp/setup_cpp_env.sh

# Run the script to setup the environment
RUN /bin/sh /tmp/setup_cpp_env.sh
