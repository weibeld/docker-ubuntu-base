FROM ubuntu:18.04
RUN apt-get update && apt-get install -y vim
RUN sed -i 's/#force_color_prompt=yes/force_color_prompt=yes/' /root/.bashrc
