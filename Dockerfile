# Dockerfile-sabtagger
# Uses the linuxserver sabnzbd image and adds python3

FROM linuxserver/sabnzbd:version-3.2.1

RUN apt-get update
RUN apt-get install -y git python3 python3-pip g++
RUN pip3 install --upgrade pip
RUN git clone https://github.com/lordwelch/comictagger.git /opt/comictagger
RUN pip3 install -r /opt/comictagger/requirements.txt

