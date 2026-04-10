# Specify the base image and tag
FROM alpine:3.21

# Install packages using the Alpine Package Keeper (apk)
# --no-cache avoids storing the index locally, keeping the image small
RUN apk add --no-cache curl bash

# Set the working directory (optional)
WORKDIR /app

# Run a command when the container starts
CMD ["curl", "--version"]

