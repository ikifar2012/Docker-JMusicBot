FROM java:8
WORKDIR /app
VOLUME [ "/app" ]
COPY JMusicBot-0.2.4-Linux.jar /app/JMusicBot-0.2.4-Linux.jar
CMD java -Dnogui=true -jar JMusicBot-0.2.4-Linux.jar