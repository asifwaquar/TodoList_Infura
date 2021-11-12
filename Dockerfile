# pull the base image
FROM node:12-alpine

# set the working direction
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install app dependencies
COPY package.json ./

COPY package-lock.json ./

RUN npm install 

# add app
COPY . ./

EXPOSE 3000

# start app
CMD ["npm", "start"]