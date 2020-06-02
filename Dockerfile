FROM java:8
ENV VER=0.2.9
WORKDIR /app
RUN apt-get update && \
apt-get install wget \
wget https://github.com/jagrosh/MusicBot/releases/download/${VER}/JMusicBot-${VER}-Linux.jar -O JMusicBot.jar
VOLUME [ "/app" ]
COPY JMusicBot.jar /app/JMusicBot.jar
CMD java -Dnogui=true -jar JMusicBot.jar