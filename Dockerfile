# Dockerfile
FROM node:14

# Set the working directory
WORKDIR /app


# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Install dependencies
RUN npm update

ENV PATH /app/node_modules/.bin:$PATH

# Copy the entire project
COPY . ./

# Build the React application
RUN npm run build


# Start the server
CMD ["npm","start"]