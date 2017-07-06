FROM ubuntu
RUN apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/* ; cd / ;  wget http://www.amusecode.org/releases/amuse-10.0-Linux_x86_64.tar.gz ; tar -zxvf amuse-10.0-Linux_x86_64.tar.gz ; rm amuse-10.0-Linux_x86_64.tar.gz
WORKDIR /amuse-10.0-Linux_x86_64
ENTRYPOINT ["/amuse-10.0-Linux_x86_64/amuse"]

