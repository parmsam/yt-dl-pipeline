#! /bin/bash

# include message of what is going on

# confirm that the user wants to download the videos in this folder
echo "Are you sure you want to download the videos in this folder? (y/n)"
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    echo "Yes"
else
    echo "No"
    exit
fi

# run download_subs.sh
echo "Running download_subs.sh"
./scripts/download_subs.sh

# run download_videos.sh
echo "Running download_videos.sh"
./scripts/download_videos.sh

# run download_metadata.sh
echo "Running download_metadata.sh"
./scripts/download_metadata.sh

# tar the video files and add date to file name
echo "Zipping the video files and subtitles"
# variable with the date
date=$(date +"%Y_%m_%d")
# tar.gz the files
tar -cvzf "videos_$date.tar.gz" *.mp4 *.vtt *.json *.webp *.description

# remove the mp4 video files that were just downloaded
echo "Removing the mp4 video files that were just downloaded"
rm *.mp4 *.vtt *.json *.webp *.description