# Use the official Node.js image.
FROM node:14

# Create and change to the app directory.
WORKDIR /usr/src/app

# Copy dependency definitions.
COPY package*.json ./

# Install production dependencies.
RUN npm install --only=production

# Copy the rest of the application code.
COPY . .

# Expose the port defined in the server.js file.
EXPOSE 6566

# Run the web service on container startup.
CMD [ "node", "server.js" ]
