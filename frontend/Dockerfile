FROM node:14

RUN mkdir -p /frontend
WORKDIR /frontend
COPY package.json .
RUN npm i --quiet
COPY . .
