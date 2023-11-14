FROM node:14

RUN mkdir -p /admin
WORKDIR /admin
COPY package.json .
RUN npm i --quiet
COPY . .
