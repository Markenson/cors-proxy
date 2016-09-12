FROM node
MAINTAINER Markenson França <markensonfranca@gmail.com>

RUN npm install express
RUN npm install request

ADD proxy.js /proxy.js

ENTRYPOINT node /proxy.js
EXPOSE 3000

