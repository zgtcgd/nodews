FROM node:alpine

WORKDIR /app

RUN apk add --no-cache bash wget curl procps

COPY package.json ./
RUN  npm install

COPY app.js ./

ENV PORT=3000
EXPOSE 3000

CMD [ "node", "app.js" ]
