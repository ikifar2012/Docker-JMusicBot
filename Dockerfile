FROM openjdk:latest
ENV VER=0.2.10
WORKDIR /app
RUN apk add --no-cache wget && \
    wget https://github.com/jagrosh/MusicBot/releases/download/${VER}/JMusicBot-${VER}-Linux.jar -O /app/JMusicBot.jar
VOLUME [ "/app" ]
CMD [ "/usr/bin/java", "-jar", "-Dnogui=true", "JMusicBot.jar" ]