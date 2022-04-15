FROM ros:noetic

RUN sudo apt-get update && \
  sudo apt-get install -y \
  python3-pip \
  vim

RUN sudo pip3 install \
  tornado \
  simplejpeg \
  rospkg

COPY . /home/rosboard
WORKDIR /home/rosboard

