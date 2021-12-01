FROM ubuntu:18.04

# Enable colour prompt
RUN sed -i 's/#force_color_prompt=yes/force_color_prompt=yes/' /root/.bashrc

# Enable man pages
RUN sed -i 's|^path-exclude=/usr/share/man|# path-exclude=/usr/share/man|' /etc/dpkg/dpkg.cfg.d/excludes 
RUN apt-get update && apt-get install -y less man manpages-posix

# Install common software 
RUN apt-get update && apt-get install -y vim jq
