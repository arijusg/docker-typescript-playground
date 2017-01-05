FROM node:boron

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN npm install -g typescript

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Install typings
RUN npm install typings --global
COPY typings.json /usr/src/app/
RUN typings install

# Bundle app source
COPY . /usr/src/app

# Compile app
RUN tsc

EXPOSE 8080
CMD [ "npm", "start" ]