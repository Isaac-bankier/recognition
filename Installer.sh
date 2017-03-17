#!/bin/bash

#install dependencies for debian and arch based systems.
#Recommended system to use is arch.
sudo pacman -S imagemagick || sudo apt-get imagemagick
sudo apt-get install python-pip python-dev || sudo pacman -S python-pip python-dev
sudo apt-get install tesseract-ocr || sudo pacman tesseract-ocr

#install dependencies through pip
#recommended language is python 3 +
sudo pip3 install wand
sudo pip3 install tensorflow-gpu
sudo pip3 install tensorflow
sudo pip3 install pytesseract
sudo pip3 install Pillow

#Unfortionatly one of the developers insists we support python 2 as well

sudo pip3 install wand
sudo pip3 install tensorflow-gpu
sudo pip3 install tensorflow
sudo pip3 install pytesseract
sudo pip3 install Pillow
