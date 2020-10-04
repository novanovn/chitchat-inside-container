FROM node:10
ENV PROJECTDIR /usr/src/app
WORKDIR $PROJECTDIR
COPY package*.json ./
 
RUN npm install 
COPY . .
 
EXPOSE 4141
CMD [ "npm", "start" ]
