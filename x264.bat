@echo off
cls
for %%A IN ("input/*.mp4") DO "ffmpeg/bin/ffmpeg.exe" -i input/%%A -c:v libx264 -map 0 -crf 27 -preset veryslow -c:a copy -c:s copy output/x264/%%A

pause