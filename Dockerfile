# what image to use
FROM node:10

# where this app should run
WORKDIR usr/src/app

# copy files from this directory to the working dir in docker
COPY package*.json ./

# run install
RUN npm install

# copy all files from this dir to the docker dir
COPY . . 

# expose port 3000
EXPOSE 3000

# run start command
CMD ["npm", "start"]