# Use an official Node runtime as a parent image
FROM node:17.1.0

# Set the working directory to /app
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Build the application
RUN npm run build

# Set the command to start the application
CMD ["yarn", "serve"]