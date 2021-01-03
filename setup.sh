#!/bin/bash

apt-get update
apt-get upgrade

# Install dependencies
apt-get install -y build-essential cmake git wget curl zip \
    python3-numpy python3-pip python3-dev python3-picamera \
    python-pyaudio python3-pyaudio libpulse-dev libasound2-dev

pip3 install --upgrade picamera[array]
pip3 install dlib face_recognition PocketSphinx pyaudio

# Cleanup from installs
apt-get clean

# Install the voicecard
git clone https://github.com/respeaker/seeed-voicecard.git
cd seeed-voicecard
sudo ./install.sh

# Setup the robot.sh script to run at startup
# TODO

# Reboot to finish the install
reboot