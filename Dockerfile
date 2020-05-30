FROM centos:latest

RUN yum install sudo -y
RUN sudo yum install python36 -y
RUN sudo yum install python3-pip -y
RUN sudo yum groupinstall "development tools" -y
RUN sudo yum install python3-devel -y
RUN pip3 install --upgrade setuptools
RUN pip3 install ez_setup
RUN pip3 install keras
RUN pip3 install numpy
RUN pip3 install pandas
RUN pip3 install tensorflow
RUN mkdir /mlmodel
WORKDIR /mlmodel