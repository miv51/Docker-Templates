# Use a cpp with application dependencies installed
FROM cpp_image_with_dependencies:latest

# set the directory where the container will start in within the images path system
WORKDIR /app

# copy files into /app in the container
COPY hello.cpp /app

# for an application this simple, we don't need to use cmake
RUN g++ hello.cpp -o hello_app -lssl -lcrypto

# Define the command to run when the container is started
CMD ["/app/hello_app"]
