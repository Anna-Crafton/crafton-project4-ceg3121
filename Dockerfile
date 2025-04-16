FROM node:alpine
WORKDIR angular-site/wsu-hw-ng-main
COPY . /usr/src/app
RUN npm install -g @angular/cli
RUN npm install 
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
RUN nvm install node
CMD["ng", "serve", "--host", "0.0.0.0"] 
