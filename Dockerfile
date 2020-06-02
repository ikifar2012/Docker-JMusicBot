FROM openjdk:15-jdk-slim-buster
ENV VER=0.2.9
WORKDIR /app
RUN apt-get update && \
apt-get install wget -y && \
wget https://github.com/jagrosh/MusicBot/releases/download/${VER}/JMusicBot-${VER}-Linux.jar -O /app/JMusicBot.jar
VOLUME [ "/app" ]
ENTRYPOINT [ "/usr/bin/java", "-jar", "JMusicBot.jar" ]