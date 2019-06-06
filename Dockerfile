FROM node:10-alpine

EXPOSE 9005

RUN yarn global add firebase-tools && yarn cache clean
