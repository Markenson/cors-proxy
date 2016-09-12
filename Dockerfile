MAINTAINER Markenson França <markensonfranca@gmail.com>
FROM node

RUN npm install express
RUN npm install request

ADD proxy.js /proxy.js

ENTRYPOINT node /proxy.js
EXPOSE 3000

