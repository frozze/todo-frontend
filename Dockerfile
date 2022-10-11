FROM node:16-alpine as builder

WORKDIR /app

COPY package*.json ./
RUN npm install

RUN rm -rf dist
COPY . /app

RUN npm run ng build --configuration=production
