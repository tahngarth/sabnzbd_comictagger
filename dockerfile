# Dockerfile-sabtagger
# Uses the linuxserver sabnzbd image and adds python3

FROM linuxserver/sabnzbd

RUN apt-get update
RUN apt-get install -y git python3 python3-pip g++
RUN pip3 install --upgrade pip
RUN git clone https://github.com/davide-romanini/comictagger.git /opt/comictagger
RUN pip3 install -r /opt/comictagger/requirements.txt
#RUN make -C /opt/comictagger/unrar lib
#RUN make -C /opt/comictagger/unrar install-lib
#RUN /opt/comictagger/comictagger.py --only-set-cv-key --cv-api-key=16f4d4d66e2b112ba0a3d26bb21d4aab9a259d19
#RUN sed -i "s|use_series_start_as_volume = False|use_series_start_as_volume = True|g" /config/.ComicTagger/settings

