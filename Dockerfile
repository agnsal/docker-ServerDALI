FROM tutum/apache-php
MAINTAINER Agnese Salutari
RUN apt-get update
RUN apt-get -y upgrade

RUN apt-get install -y libc6-i386
RUN apt-get install -y lib32ncurses5
RUN apt-get install -y lib32stdc++6

RUN apt-get install -y vim

RUN apt-get install -y build-essential

RUN apt-get -y install wget git
RUN git clone git://github.com/agnsal/ServerDALI
RUN git clone git://github.com/AAAI-DISIM-UnivAQ/DALI
RUN git clone git://github.com/agnsal/ServerDALImas

RUN cp -a DALI ServerDALI/
RUN rm -r -f DALI
RUN cp -a ServerDALImas ServerDALI/DALI/
RUN rm -r -f ServerDALImas
RUN cd ServerDALI/DALI/ServerDALImas/conf && mkdir mas && chmod u+rx makeconf.sh && chmod u+rx startagent.sh
RUN export TERM=xterm

EXPOSE 80/tcp
EXPOSE 3306/tcp
