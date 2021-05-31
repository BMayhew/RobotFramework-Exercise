FROM ubuntu
LABEL version="latest" maintainer="ritugarg <ritu.garg@globallogic.com>"
RUN apt-get update
RUN apt install -y python3.8
RUN apt install -y python3-pip

#Install robotframework and seleniumlibrary
RUN pip3 install robotframework
RUN pip3 install robotframework-seleniumlibrary
RUN pip3 install -U requests
RUN pip3 install -U robotframework-requests
RUN pip3 install jsonpath_rw
RUN pip3 install jsonpath_rw_ext
RUN pip3 install robotframework-jsonlibrary

#Robot Specific
RUN mkdir /robot
run mkdir /results
ENTRYPOINT ["robot"]



#CMD ["/app/help.py"]
#ENTRYPOINT ["python3.8"]