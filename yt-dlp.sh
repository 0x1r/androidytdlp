apt-get update && apt-get upgrade

termux-setup-storage 

pkg install python 

pip install yt-dlp 


FILE=/data/data/com.termux/files/home/storage/shared/Youtube
if [ -d "$FILE" ]; then
    echo "$FILE exists"
else mkdir /data/data/com.termux/files/home/storage/shared/Youtube; 
	echo"made dir"
fi




 

FILE=~/.config/yt-dlp
if [ -d "$FILE" ]; then
    echo "$FILE exists"
else mkdir -p ~/.config/yt-dlp; 
	echo"made dir"
fi
 
apt-get install nano ffmpeg
pkg install vim git curl wget

FILE=~/.config/yt-dlp/config 
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else touch ~/.config/yt-dlp/config ;
	echo "made"
	fi
echo '--no-mtime -o /data/data/com.termux/files/home/storage/shared/Youtube/%(title)s.%(ext)s '>> ~/.config/yt-dlp/config



FILE=~/bin
if [ -d "$FILE" ]; then
    echo "$FILE exists"
else mkdir ~/bin; 
	echo "made dir"
fi


cd ~/bin 

FILE=~/bin/termux-url-opener  
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else touch ~/bin/termux-url-opener ;
	echo "made"
	fi
echo 'yt-dlp $1' >>termux-url-opener 
echo "alias ytdlpmp3='yt-dlp -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0'">> ~/.zshrc


