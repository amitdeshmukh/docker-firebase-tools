FROM node:alpine

RUN yarn global add firebase-tools && yarn cache clean

ENTRYPOINT firebase
