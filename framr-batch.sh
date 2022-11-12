# Usage:
# bash framr-batch.sh videosDirectory videoType shadowImage innerWidth innerHeight innerX innerY
#
# Example for a batch of 1920x1080 videos:
# bash framr-batch.sh myVideos mp4 shadow.png 1800 1012 60 34
currentDir=$(pwd);
outputDir="$currentDir/output_$1";
mkdir -p $outputDir;
for file in "$1/"*."$2"; do bash "framr.sh" $file $3 $4 $5 $6 $7 "$outputDir/"$(basename $file); done
