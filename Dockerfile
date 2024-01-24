# Use an official Alpine runtime as a parent image
FROM alpine:3.18

# Set the working directory in the container to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install dependencies
RUN apk add --no-cache \
    bash \
    gawk \
    findutils \
    coreutils \
    git \
    ncurses \
    fzf

# Set permissions and move the script to path
RUN chmod +x ugit && mv ugit /usr/local/bin/

# Run ugit when the container launches
CMD ["ugit"]