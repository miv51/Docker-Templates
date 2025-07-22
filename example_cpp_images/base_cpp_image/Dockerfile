# Use the base alpine image
FROM alpine:3.20

# Update the apk package manager
RUN apk update

# Install build tools (compilers, etc...), c++ compiler, cmake, and make
RUN apk add --no-cache g++=14.1.0-r5 cmake=3.29.3-r0 make=4.4.1-r0 musl-dev=1.2.5-r0 linux-headers=6.6.35-r0
