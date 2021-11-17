FROM node:10-alpine

RUN mkdir -p /home/CMSC389T/app && chown -R node:node /home/CMSC389T/app

WORKDIR /home/CMSC389T/app

COPY ["package.json", "package-lock.json*", "./"]

USER node

EXPOSE 8080

RUN npm install

COPY . .

CMD ["node", "app.js"]
