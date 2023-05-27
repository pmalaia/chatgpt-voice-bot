# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm ci

# Copy the rest of the application code to the working directory
COPY . .

ENV PORT=3000

# Expose the port on which your application will run
EXPOSE $PORT

# Set the command to start the application
CMD ["npm", "start"]
