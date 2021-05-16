FROM openjdk:16-jdk-alpine
ENV VER=0.3.4
WORKDIR /app
RUN apk add --no-cache wget && \
    wget https://github.com/jagrosh/MusicBot/releases/download/${VER}/JMusicBot-${VER}.jar -O /bin/JMusicBot.jar
VOLUME [ "/app" ]
CMD [ "java", "-jar", "-Dnogui=true", "/bin/JMusicBot.jar" ]