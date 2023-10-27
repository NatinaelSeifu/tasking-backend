FROM node:alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV MONGODB_URL=${MONGODB_URL}

ENV ACCESS_TOKEN_SECRET=${ACCESS_TOKEN_SECRET}

ENV PATH /app/node_modules/.bin:$PATH

EXPOSE 5000

CMD ["npm", "start"]
