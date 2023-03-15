# Specify a base image
FROM node:16-alpine

# set working directory
WORKDIR '/app'

# Copy and Install some dependencies from package.json file
COPY package.json .
RUN npm install

# Copy all other file rather than package.json file
COPY . ./
EXPOSE 3001
# Default command
CMD [ "npm","run", "dev" ]