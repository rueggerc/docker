# Build Image
# docker image build -t tomcat-rest:1.0

# Run Container
# docker container run -d --name tomcat-rest1 -p 8084:8080 tomcat-rest:1.0

# Welcome
# http://localhost:8084/tomcat-rest/

# Get Books
# http://localhost:8084/tomcat-rest/rest/books/books

#docker rm -f CONTAINER_ID
#ls --color=never
#alias ls='/bin/ls --color=never'

#docker exec -it tomcat-rest1 bash

FROM tomcat:8.0.47-jre8
COPY /target/tomcat-rest.war /usr/local/tomcat/webapps
EXPOSE 8080