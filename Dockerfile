# Use the latest LTS version of Node.js (Node 18)
FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install
# If you're building for production, uncomment the following:
# RUN npm ci --only=production

# Copy the entire project source to the container
COPY . .

# Expose the port the app runs on
EXPOSE 8080

# Start the application
CMD [ "node", "server.js" ]
