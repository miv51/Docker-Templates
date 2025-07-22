# Use the base alpine image
FROM alpine:3.20

# Update the apk package manager
RUN apk update

# Install build tools (compilers, etc...), c++ compiler, cmake, and make
RUN apk add --no-cache g++=13.2.1_git20240309-r1 cmake=3.29.3-r0 make=4.4.1-r2 musl-dev=1.2.5-r1 linux-headers=6.6-r0
