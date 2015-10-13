FROM xena/lapis:2.1

ADD init/oleg /seed/oleg
RUN mv /seed/oleg/olegdb.conf /oleg/db.conf
ADD init/oleg/runit/ /etc/service
ADD init/startup/ /etc/my_init.d

RUN cd /app/src && ./test.sh

ENV PORT 5000
EXPOSE 5000
