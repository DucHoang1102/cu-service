FROM node:10

# Create app directory
WORKDIR /usr/src/app

# Bundle app source
COPY . .

RUN mv .envdev .env

RUN npm install

EXPOSE 8080

CMD [ "node", "app.js" ]