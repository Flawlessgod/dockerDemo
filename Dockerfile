# FROM node:7.7.2-alpine
# EXPOSE 8080
# WORKDIR /usr/app
# COPY package.json .
# RUN npm install --quiet
# COPY . .

ARG NODE_VERSION=19-alpine3.16
FROM node:${NODE_VERSION}
EXPOSE 8080
RUN apk update && apk add bash
WORKDIR /usr/src/app/pages
WORKDIR ..
COPY *.json .
COPY server.js .
COPY pages/* pages
RUN npm add express
RUN npm add body-parser
CMD ["node", "server.js"]