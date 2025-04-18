# crafton-project4-ceg3121


## Docker Installation How-To:

I downloaded Docker for Windows from https://www.docker.com/ and followed the prompts on the installer. 
Then I did docker --version in powershell to make sure it was installed.
I did not have any problems with dependencies. 
  
![image](https://github.com/user-attachments/assets/410dd96c-bde8-4160-acc7-9dea1256ab6a)


To make sure everthing was working, I ran a pre-existing hello-world container. I used instructions from https://www.geeksforgeeks.org/docker-hello-world/, whcih had me
pull the continer and then run it. 

  'docker pull hello-world'
  'docker run hello-world'
  
![image](https://github.com/user-attachments/assets/1fbf9e40-40b8-4f0f-9fba-f600ffece131)


## 
I navigated to /angular-site/wsu-hw-ng-main and installed angular. 
I already had node js installed on my computer. I tried updating it, which did not work initially because the public wifi network I was using blocked the download. I was able to update it at home using nvm. 


I navigated to wsu-hw-ng-main and ran ng serve -host 0.0.0.0 to compile. 
I enabled autocompletion when prompted.
![image](https://github.com/user-attachments/assets/2fb7a683-7e9b-4e15-8fe0-12ccb068e881)

http://localhost:4200/
![image](https://github.com/user-attachments/assets/84671484-acba-47ad-bc07-4ec936c4a49a)


## Creating a Dockerfile
- most of this section is based heavily on the dev.to link given in the project overview.

[I should put an explanation of Dockerfile here] !! 

I followed instrutions in the dev.io to create a new angular aplication. 

I changed My dockerfile so it copies to scr/app in the new angular aplication, instead of to .

When I tried to build the aplication, I got an error saying "The command 'docker' could not be found in this WSL 2 distro.
We recommend to activate the WSL integration in Docker Desktop settings." So I did that.
![image](https://github.com/user-attachments/assets/3eebf4fb-7bb9-496a-83f1-c6524748785b)

And restarted Docker. 

This fixed the error, but I got another one about the COPY line in my Dockerfile. "ERROR: failed to solve: dockerfile parse error on line 3: COPY requires at least two arguments, but only one was provided. Destination could not be determined"

The line is COPY . /usr/src/app 

I did npm start in angular-docker directory.
In a seperate terminal, I did docker build -t angular-docker . (and got an error because there was no space between CMD and the list of commands, so I fixed that)
I ended up removing several RUN lines, since they threw errors. The Dockerfile still installs angular, but nothing else.

I did docker images to check that the imgge had been created, and it was sucsessfull! 

![image](https://github.com/user-attachments/assets/5ce5ad2c-d9dc-46d3-90cc-0fe9ff9a9781)

I used the instructions on dev.io given in the prject overview to create a container, but had troubble getting the continer to run. I got an error for being in the wrong directory, and have not been able to find the correct one, so I assume it is an issue with the way my files are arranged. I used the command docker run -p 4201:4200 angular-docker








# Link to the Docker Hub Repository I Used for this Project > 
  https://hub.docker.com/repository/docker/acrafton21/crafton-ceg3120/general

## Github + Docker How-To





  
