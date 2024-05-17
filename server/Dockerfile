# Use the official MongoDB image from Docker Hub
#FROM mongo:latest

# Expose the MongoDB port
#EXPOSE 27017

# Default command
#CMD ["mongod"]

# Use the official Node.js image
FROM node:14-alpine

# Create and set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY server/package*.json ./

# Install dependencies
RUN npm install

# Copy the backend source code
COPY server .

# Expose the backend port
EXPOSE 5000

# Command to run the backend server
CMD ["node", "server.js"]
