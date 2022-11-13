# Framr Script

Script to give videos a fancy frame with FFmpeg.

Also check out the <a href="https://framr.dev">Framr web app</a>. It uses FFmpeg compiled to WebAssembly to run on your browser.

## Framr Usage

Arguments
```
framr.sh video shadowImage innerWidth innerHeight innerX innerY outputVideo
```

Example (for 1920x1080 video)
```
framr.sh video.mp4 shadow.png 1800 1012 60 34 output.mp4
```

## Framr Batch Usage
Arguments
```
framr-batch.sh videosDirectory videoType shadowImage innerWidth innerHeight innerX innerY
```

Example (for 1920x1080 videos)
```
framr-batch.sh myVideos mp4 shadow.png 1800 1012 60 34
```
