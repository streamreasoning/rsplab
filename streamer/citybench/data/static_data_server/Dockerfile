FROM node:boron

WORKDIR /home/server

RUN npm i -g http-server

COPY static/ .

EXPOSE 8080

ENTRYPOINT  ["http-server"]

