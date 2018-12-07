FROM ubuntu:latest
COPY libhiredis0.14_0.14.0-3_amd64.deb /tmp/
COPY coturn_4.5.0.7-1+b1_amd64.deb /tmp/
RUN apt-get update && \
	dpkg -i /tmp/libhiredis0.14_0.14.0-3_amd64.deb && \
	(dpkg -i /tmp/coturn_4.5.0.7-1+b1_amd64.deb || true) && \
	apt-get -f install -y && \
	apt-get install -y kamailio ejabberd
