#  Dockerfile for Node Express Backend

FROM --platform=linux/amd64 node:17.3.0

# Create App Directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install Dependencies
COPY package*.json ./

RUN npm install --silent

# Copy app source code
COPY . .

# Exports
EXPOSE 8080

CMD ["npm","start"]