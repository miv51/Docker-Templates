# Use a python with application dependencies installed
FROM python_image_with_dependencies:latest

# set the directory where the container will start in within the images path system
WORKDIR /app

# copy files into /app in the container
COPY main.py /app

# Define the command to run when the container is started
CMD ["/app/venv/bin/python", "/app/main.py"]
