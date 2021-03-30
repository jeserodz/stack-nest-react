FROM node:alpine

# Server
WORKDIR /usr/src/app/server

COPY ./server/package*.json ./

RUN npm install

COPY ./server .

RUN npm run build

# Client
WORKDIR /usr/src/app/client

COPY ./client/package*.json ./

RUN npm install

COPY ./client .

RUN npm run build

# Common
WORKDIR /usr/src/app

CMD [ "node", "server/dist/main" ]
