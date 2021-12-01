FROM node:14.18-alpine3.14

RUN mkdir -p /app
WORKDIR /app

COPY package.json .
COPY yarn.lock .

RUN yarn global add gatsby-cli
RUN yarn --ignore-optional

ENV GATSBY_TELEMETRY_DISABLED=1

COPY . .

EXPOSE 8000