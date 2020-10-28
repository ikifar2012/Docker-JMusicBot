FROM openjdk:16-jdk-alpine
ENV VER=0.2.10
WORKDIR /app
RUN apk add --no-cache wget && \
    wget https://github.com/jagrosh/MusicBot/releases/download/${VER}/JMusicBot-${VER}.jar -O /app/JMusicBot.jar
VOLUME [ "/app" ]
CMD [ "java", "-jar", "-Dnogui=true", "JMusicBot.jar" ]