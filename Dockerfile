FROM node:latest
ENV PROJECTDIR /usr/src/app
WORKDIR $PROJECTDIR
COPY package*.json ./
 
RUN npm i mocha -g 
RUN npm i chai -g
RUN npm i chai-http -g 
COPY . .
 
EXPOSE 4141
CMD [ "npm", "start" ]
