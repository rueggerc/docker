FROM node:8-alpine

#docker build --tag restapp1 .
#docker run -d -p 3000:3000 --name restcontainer1 restapp1:latest
#docker exec -it restcontainer1 bash
#http://localhost:3000/users/book

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
