# Use a specific Node.js version
FROM node:14.17.0

# Set the working directory
WORKDIR /app

# Copy dependency files
COPY package-lock.json package.json ./

# Install only production dependencies
RUN npm ci --only=production

# Copy application files
COPY . .

# Expose the default Node.js application port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
