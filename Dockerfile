# syntax=docker/dockerfile:1
FROM node:12-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8000
CMD ["node", "app.js"]