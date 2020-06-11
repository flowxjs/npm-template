FROM node:12
RUN npm install pm2 -g
WORKDIR /usr/app/npm
COPY . .
RUN npm i
EXPOSE 8080
CMD [ "npm", "run", "start" ]
