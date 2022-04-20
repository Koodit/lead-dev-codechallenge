FROM node:14.18-alpine3.14

WORKDIR /srv/app

COPY package.json .
COPY yarn.lock .

RUN yarn --ignore-optional

COPY . .

EXPOSE 1337