# Start your image with a node base image
FROM node:20.16.0-alpine

# The /app directory should act as the main application directory
WORKDIR /app

COPY . .

# Install dependencies
RUN npm install

EXPOSE 3000

# Start the app using serve command
CMD [ "npm", "start" ]