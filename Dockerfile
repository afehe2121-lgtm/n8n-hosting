FROM n8nio/n8n:latest

# Set working directory inside the container
WORKDIR /data

# Copy repository files into the container (keeps any workflows / custom files)
COPY . /data

# Expose the port n8n uses
EXPOSE 5678

# Start n8n
CMD [ "n8n", "start" ]
