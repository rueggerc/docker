FROM node:8-alpine

#docker build --tag nodetest1 .
#docker run -d -p 3000:3000 --name nodecontainer1 nodetest1:latest
#docker exec -it nodecontainer1 bash
#http://localhost:3000

#stop and remove
#docker rm -f CONTAINER_ID
#ls --color=never
#alias ls='/bin/ls --color=never'


# Copy Code
RUN mkdir /myapp
COPY / /myapp
WORKDIR /myapp

# Install packages
RUN apk update && apk upgrade && apk add --no-cache bash git && \
npm i -g npm && npm install

EXPOSE 3000
ENTRYPOINT ["npm", "start"]
