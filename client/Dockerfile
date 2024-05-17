# Use the official Node.js image
FROM node:14-alpine

# Create and set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY client/package*.json ./

# Install dependencies
RUN npm install --force

# Copy the frontend source code
COPY client .

# Build the React application
RUN npm run build

# Install serve to serve the static files
#RUN npm install -g serve

# Expose the frontend port
EXPOSE 3000

# Command to serve the frontend
#CMD ["sed"rve", "-s", "buil]
CMD ["npm" , "start"]
