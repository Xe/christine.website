FROM xena/lapis:1.7.7.1

ADD oleg /seed/oleg
RUN mv /seed/oleg/olegdb.conf /oleg/db.conf
ADD oleg/runit/ /etc/service
