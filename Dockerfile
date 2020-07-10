FROM ubuntu:20.04
ENV VER=0.2.10
WORKDIR /app
RUN apt-get update && \
apt-get install wget openjdk-14-jdk -y && \
wget https://github.com/jagrosh/MusicBot/releases/download/${VER}/JMusicBot-${VER}-Linux.jar -O /app/JMusicBot.jar
VOLUME [ "/app" ]
CMD [ "/usr/bin/java", "-jar", "-Dnogui=true", "JMusicBot.jar" ]