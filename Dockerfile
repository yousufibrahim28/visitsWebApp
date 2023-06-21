
#Specify base image - install OS
FROM node:alpine

WORKDIR '/app'

#Run commands to install dependencies
COPY package.json .
RUN  npm install
COPY . .

 #Default command to start node app
CMD [ "npm", "start" ]