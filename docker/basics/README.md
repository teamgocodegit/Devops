Docker Hello-World Basics
This directory contains a minimal example to introduce Docker container basics.

1. What this Dockerfile does

FROM alpine:latest: It downloads a minimal Linux operating system called Alpine. Think of this as the "foundation" of your house.

CMD [...]: It tells Docker what to do once the container starts up. In this case, it simply prints a greeting to the terminal.

2. How to Build and Run

Step 1: Build the Image Navigate to the docker/basics/ directory and run the build command. This packages your Dockerfile into a usable "Image".

Bash

# -t flags tags (names) the image "hello-docker"
# The "." at the end tells Docker to look for the Dockerfile in the current directory
docker build -t hello-docker .
Step 2: Run the Container Now that the image is built, you can run an instance of it (a "Container").

Bash
`docker run hello-docker`
Expected Output:

Plaintext
`Hello, World! Welcome to your first Docker container.`
