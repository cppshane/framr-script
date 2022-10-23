# bash framr-batch.sh my_directory ~/Videos/shadow.png
# note that my_directory must contain framr_output directory
DIR=$(pwd)
cd $1
for file in *.mp4; do bash "$DIR/framr.sh" $file $2; done
