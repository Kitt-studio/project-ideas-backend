FROM node:12.13-alpine As development

WORKDIR /usr/src/app

COPY package*.json ./
COPY yarn.lock ./

RUN yarn

COPY . .

RUN yarn build

ARG NODE_ENV=development
ENV NODE_ENV=${NODE_ENV}


#COPY /usr/src/app/dist ./dist
CMD ["node", "dist/main"]