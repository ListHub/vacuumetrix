FROM phusion/baseimage:0.9.16
MAINTAINER Shane Starcher

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

RUN apt-get update && apt-get -y install ruby ruby-dev build-essential libcurl3 libcurl3-gnutls libcurl4-openssl-dev
RUN gem install json --no-ri --no-rdoc
RUN gem install fog --no-ri --no-rdoc

ADD . /opt/vaccumetrix
ADD ./files/cron.conf /etc/cron.d/vaccumetrix
#ADD ./files/config.rb /opt/vacuumetrix/conf/config.rb
#/usr/bin/env > /etc/environment #Environment info is not loaded by cron so lets put it in /etc/environment
#VOLUME ["/opt/graphite/conf","/opt/graphite/storage"]
#CMD /opt/start.sh



# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*




