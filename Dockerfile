FROM node

RUN mkdir /app
WORKDIR /app

COPY package.json /app
COPY package.json /app
COPY . /app

RUN yarn install
RUN yarn test
RUN yarn build

EXPOSE 3000

CMD yarn start

