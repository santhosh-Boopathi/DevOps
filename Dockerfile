FROM node:18
# Set the working directory
WORKDIR /app
# Copy package.json and package-lock.json first to leverage Docker caching
COPY package*.json ./
# Install dependencies
RUN npm install
# Copy the rest of the application files
COPY . .
# Expose the application port
EXPOSE 3000
# Start the application
CMD ["node", "app.js"]
