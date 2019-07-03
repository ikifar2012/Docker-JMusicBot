curl -s https://api.github.com/repos/jagrosh/MusicBot/releases/latest \
| grep "browser_download_url.*Linux.jar" \
| cut -d '"' -f 4 \
| wget -qi -