# Create inner clip
innerClip="inner_$1"
ffmpeg -i $1 -vf scale=1800:1012 -preset slow -crf 18 $innerClip -y

# Create outer clip
outerClip="outer_$1"
ffmpeg -i $1 -vf "boxblur=30" -c:a copy $outerClip -y

# Apply shadow to outer clip
shadowClip="shadow_$1"
ffmpeg -i $outerClip -i shadow.png -filter_complex "overlay" $shadowClip -y

# Apply inner clip to shadow clip
ffmpeg -i $shadowClip -i $innerClip -filter_complex "overlay = 60:34" $2 -y

# Cleanup
rm $innerClip $outerClip $shadowClip
