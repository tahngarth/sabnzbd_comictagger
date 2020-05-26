# Dockerfile-sabtagger
# Uses the linuxserver sabnzbd image and adds python3

FROM linuxserver/sabnzbd

RUN apt-get update
RUN apt-get install -y git python3 python3-pip g++
RUN pip3 install --upgrade pip
RUN git clone https://github.com/davide-romanini/comictagger.git /opt/comictagger
RUN pip3 install -r /opt/comictagger/requirements.txt

