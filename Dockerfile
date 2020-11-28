FROM node:12.13-alpine As development

WORKDIR /usr/src/app

COPY package*.json ./

RUN yarn install

COPY . .

RUN yarn build

ARG NODE_ENV=develop
ENV NODE_ENV=${NODE_ENV}

CMD ["node", "dist/main"]