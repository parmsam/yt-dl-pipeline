#! /bin/bash

# download subtitles for the videos
echo "Downloading subtitles for the videos"
yt-dlp -a video_links.txt --write-sub --skip-download