#! /bin/bash

# include message of what is going on

# download the data from the sources as mp4 files
echo "Downloading the data from the sources as mp4 files"
yt-dlp -a video_links.txt -f mp4
