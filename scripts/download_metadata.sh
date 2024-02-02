#! /bin/bash

# include message of what is going on
# download the descriptions (metadata) of the videos
## this includes description, info.json, annotations, thumbnail
yt-dlp -a video_links.txt --skip-download --write-description --write-info-json --write-annotations --write-thumbnail --skip-download 