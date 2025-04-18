# crafton-project4-ceg3121


## Docker Installation How-To:

1) Download Docker for Windows from https://www.docker.com/ and follow the prompts on the installer. 
2) Do docker --version in powershell to make sure it is installed correctly.

Note: I already had an older version of docker installed for a previous project, so it is possable I misssed somthing here. 
  
![image](https://github.com/user-attachments/assets/410dd96c-bde8-4160-acc7-9dea1256ab6a)

## Running a Docker Container:

To make sure everthing was working, I ran a pre-existing hello-world container. I used instructions from https://www.geeksforgeeks.org/docker-hello-world/, which had me
pull the continer and then run it. 

  'docker pull hello-world'
  'docker run hello-world'

Once Docker was working, I ran the angular-site aplication that was given as part of the project. 

1) I installed angular and node js. 
    -  I navigated to /angular-site/wsu-hw-ng-main and installed angular with npm. This worked on the first try.
    -  I already had an older version node js installed on my computer, but the aplication would not compile without at least version 18. 
    -  Itried updating it, which did not work initially because the public wifi network I was using blocked the download. I was able to update it at  home using nvm. 

2) I navigated to wsu-hw-ng-main and ran ng serve -host 0.0.0.0 to compile. 
   - I enabled autocompletion when prompted. I have googled this and still do not know what this means, but it does not seem to have affected anything so far.
     
3) To confirm that the aplication was working, I followed the instructions in the terminal and went to http://localhost:4200/, which showed a fancy looking bird website.


![image](https://github.com/user-attachments/assets/84671484-acba-47ad-bc07-4ec936c4a49a)


![image](https://github.com/user-attachments/assets/2fb7a683-7e9b-4e15-8fe0-12ccb068e881)


## Creating a Dockerfile:

- Most of this section is based heavily on the dev.to link given in the project overview.
- I ended up removing several lines later since they were causing errors. 





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

I did docker images to check that the image had been created, and it was sucsessfull! 

![image](https://github.com/user-attachments/assets/5ce5ad2c-d9dc-46d3-90cc-0fe9ff9a9781)

I used the instructions on dev.io given in the prject overview to create a container, but had troubble getting the continer to run. I got an error for being in the wrong directory, and have not been able to find the correct one, so I assume it is an issue with the way my files are arranged. I used the command docker run -p 4201:4200 angular-docker. I was able to run the hello-world container from dockerhub, so I know the issue is specific to the container I made. 

![image](https://github.com/user-attachments/assets/3f491475-c0ff-4875-86cd-b6708a32e01e)








# Link to the Docker Hub Repository I Used for this Project > 
  https://hub.docker.com/repository/docker/acrafton21/crafton-ceg3120/general

## Github + Docker How-To





  
