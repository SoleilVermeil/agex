# Use the official Jupyter base image
# FROM jupyter/minimal-notebook
FROM ubuntu:latest

# Install dependencies
RUN apt-get -y update
RUN apt-get -y install git
RUN apt-get -y install python3
RUN apt-get -y install python3-pip
RUN apt-get clean

COPY requirements.txt /tmp/

EXPOSE 8866

# Launch Voila when the container starts
CMD pip install --no-cache-dir notebook; pip install --no-cache-dir -r /tmp/requirements.txt; pip install --no-cache-dir --no-deps voila-materialscloud-template==0.3.14; git clone https://github.com/SoleilVermeil/sajex.git --verbose --progress; voila --no-browser --port=8866 --Voila.ip=0.0.0.0 --template=materialscloud-tool /sajex/SAJEx.ipynb
