FROM node:8.4
MAINTAINER Harsh Shah <shah.harsh438@gmail.com>
RUN npm install gulp -g
RUN mkdir /opt/app
ADD . /opt/app
WORKDIR /opt/app
RUN npm install
EXPOSE 3000
CMD [ "node", "index.js" ]