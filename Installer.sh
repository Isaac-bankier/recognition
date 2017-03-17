#!/bin/bash

sudo pacman -S imagemagick || sudo apt-get imagemagick
sudo apt-get install python-pip python-dev || sudo pacman -S python-pip python-dev python-virtualenv

pip3 install tensorflow-gpu 
