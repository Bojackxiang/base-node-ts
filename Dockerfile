FROM node:14.15.4-alpine

WORKDIR /app

COPY package.json .
RUN npm install

COPY ./build/ ./build

EXPOSE 3001

CMD ["npm", "run", "serve"]