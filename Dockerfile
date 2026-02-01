# Use Node.js as base image
FROM node:14

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY backend/package*.json ./
RUN npm install

# Copy backend code
COPY backend/ ./

# Copy frontend
COPY frontend/ ./frontend/

# Expose port
EXPOSE 3000

# Start the server
CMD ["npm", "start"]
