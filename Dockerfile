FROM xena/lapis:1.7.7.1

ADD oleg /seed/oleg
RUN cd /seed/oleg && ./seed.sh
ADD oleg/runit/ /etc/service
