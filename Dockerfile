# Use a base image
FROM alpine:latest

# Set the working directory inside the container
WORKDIR /app

# Copy files from the host machine to the container
COPY . .

# Define a command to run when the container starts
CMD ["echo", "Hello, Docker!"]
