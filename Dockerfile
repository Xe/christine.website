FROM xena/lapis:1.7.7.2

ADD init/oleg /seed/oleg
RUN mv /seed/oleg/olegdb.conf /oleg/db.conf
ADD init/oleg/runit/ /etc/service
