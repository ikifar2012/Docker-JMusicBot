FROM ubuntu:bionic
WORKDIR /app
RUN \
# Update
apt-get update -y && \
# Install Java
apt-get install default-jre curl wget -y && \
curl -s https://api.github.com/repos/jagrosh/MusicBot/releases/latest \
| grep "browser_download_url.*Linux.jar" \
| cut -d '"' -f 4 \
| wget -qi -
VOLUME [ "/app" ]
COPY . /app
ADD . /app
CMD java -Dnogui=true -jar JMusicBot-0.2.3-Linux.jar