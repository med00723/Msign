# Use an official Node.js runtime as the base image
FROM node:14-alpine

# Set the working directory inside the container image
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Copy the entire project directory to the working directory
COPY . .

# Expose the port that the application listens on
EXPOSE 5000

# Set the command to run the application
CMD ["npm", "start"]
