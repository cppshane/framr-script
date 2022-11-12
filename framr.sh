# Usage:
# bash framr.sh video shadowImage innerWidth innerHeight innerX innerY outputVideo
#
# Example for a 1920x1080 video:
# bash framr.sh video.mp4 shadow.png 1800 1012 60 34 output.mp4
ffmpeg -i "$1" -i "$2" -filter_complex "[0]boxblur=30[a];[a][1]overlay[b];[0]scale=$3:$4[c];[b][c]overlay=$5:$6" -preset slow -crf 18 $7