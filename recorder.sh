#!/bin/bash

while [[ true ]]; do
  ./main.#!/bin/sh
  mv --backup=numbered image.png image.png
  sleep 5
done

ffmpeg -i image.png.~%d~ output.gif
