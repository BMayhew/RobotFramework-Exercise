FROM python:3.8

#Coppies all files in folder to docker container
COPY . /

#Install required dependencies
RUN pip install -r requirements.txt

#Robot Specific  These may not be needed as the output is being placed in root directory may could remove line 10-11
RUN mkdir /robot
RUN mkdir /results

#This is another way to interact with Docker, by default this runs the command 'robot api.robot' This is different than endpoint as once test is complete, the docker container closes automatically. The Entrypoint is similar to the command and for testing purposes you can build it to allow you to interact with the docker container.
CMD [ "robot", "./api.robot" ]