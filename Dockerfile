# Use an official Node.js runtime as a base image
FROM node:14

# Set the working directory within the container
WORKDIR /CICD

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose a port if your React app needs it
EXPOSE 3000

# Start the React app
CMD ["npm", "start"]