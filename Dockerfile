FROM node:latest
WORKDIR /srv
COPY . .
RUN npm set registry=http://repo.nwie.net:8080/nexus/content/groups/npm/
RUN npm install
CMD node ./bin/www