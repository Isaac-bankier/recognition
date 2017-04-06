#!/bin/bash

while [[ true ]]; do
  ./main.sh
  mv --backup=numbered image.png recorded.png
  sleep 5
done

ffmpeg -i image.png.~%d~ output.gif
