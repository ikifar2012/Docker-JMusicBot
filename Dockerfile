FROM ubuntu:bionic
RUN \
# Update
apt-get update -y && \
# Install Java
apt-get install default-jre curl wget -y && \
curl -s https://api.github.com/repos/jagrosh/MusicBot/releases/latest \
| grep "browser_download_url.*Linux.jar" \
| cut -d '"' -f 4 \
| wget -qi -
COPY . /app
CMD java -Dnogui=true -jar JMusicBot-0.2.3-Linux.jar