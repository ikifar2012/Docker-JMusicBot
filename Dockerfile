FROM alpine:3.13.6
ENV VER=0.3.5
WORKDIR /app
RUN apk add --no-cache wget libstdc++6 && \
    wget https://github.com/jagrosh/MusicBot/releases/download/${VER}/JMusicBot-${VER}.jar -O /bin/JMusicBot.jar
VOLUME [ "/app" ]
CMD [ "java", "-jar", "-Dnogui=true", "/bin/JMusicBot.jar" ]