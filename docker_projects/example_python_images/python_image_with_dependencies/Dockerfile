# Use the base python image
FROM base_python_image:latest

# Copy the script used to setup the python virtual environment
COPY install_python_packages.sh /tmp

# Give this file permission to be executed
RUN chmod +x /tmp/install_python_packages.sh

# Run the script to install python packages
RUN /bin/sh /tmp/install_python_packages.sh venv /app

