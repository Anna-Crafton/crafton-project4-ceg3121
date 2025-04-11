FROM node:alpine: latest

RUN npm install -g @angular/cli
RUN npm install 
COPY . angular-site
CMD ["ng", "serve", "--host", "0.0.0.0"]

# https://dev.to/rodrigokamada/creating-and-running-an-angular-application-in-a-docker-container-40mk 
