# Use Node.js base image
FROM node:20-alpine

# Add jq for parse
RUN apk add --no-cache jq

# Set working directory
WORKDIR /app

# Copy files
COPY package*.json ./
RUN npm install
COPY . .

# Expose port and start the app
EXPOSE 3000
CMD ["npm", "start"]
