FROM node:14

WORKDIR /src

ADD package.json .
RUN npm install

COPY index.js .

EXPOSE 3000

CMD ["npm", "start"]