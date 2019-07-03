FROM java:8
WORKDIR /app
VOLUME [ "/app" ]
RUN \
# Update Ubuntu
 apt-get update -y && \
# # Install Java
 apt-get install default-jre curl wget \
COPY JMusicBot-0.2.3-Linux.jar /app/JMusicBot-0.2.3-Linux.jar
# COPY JMusicBot-0.2.3-Linux.jar /app
CMD java -Dnogui=true -jar JMusicBot-0.2.3-Linux.jar