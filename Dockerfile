#stage 1: Build the application
FROM node:latest AS builder
WORKDIR /app
COPY . . 
RUN npm install
RUN npm start

#stage 2: Create image
FROM node:alpine 
WORKDIR /app
COPY --from=builder /app/package.json /app/package-lock.json ./
COPY --from=builder /app/build ./build
EXPOSE 3000
