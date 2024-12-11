FROM node:18.20.5-alpine

WORKDIR /bless

COPY ./app/package*.json ./

RUN npm install

COPY ./app .

ENTRYPOINT ["node", "main.js"]


