FROM ubuntu
MAINTAINER Chandrkanth Nala
RUN apt-get update
RUN apt-get install -y nodejs
RUN apt-get install -y npm
RUN npm install -g node-gyp
RUN npm install -g @angular/cli
RUN mkdir -p /usr/angularApp
WORKDIR "/usr/angularApp"
COPY . /usr/angularApp
CMD ["ng","serve","--host","0.0.0.0","--port","3000"]
EXPOSE 3000
