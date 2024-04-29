FROM almalinux:8.6
RUN echo 8.6 > /etc/yum/vars/releasever
RUN dnf update -y
COPY init.sh /
RUN chmod 755 /init.sh
CMD /init.sh

