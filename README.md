# ButterRobot
A python and raspberry pi powered robot with inspiration from Rick and Morty.

## Hardware

* Raspberry PI 4
* Raspberry PI camera
* [SeedStudio 2-Mics Pi HAT](https://wiki.seeedstudio.com/ReSpeaker_2_Mics_Pi_HAT/)
* 18650 battery
* [2x TT Motors](https://www.adafruit.com/product/3777?gclid=Cj0KCQiA0MD_BRCTARIsADXoopbuf6alvm1VYQOK-tD7rAZrQ_E1Eeb1aWw_iPXTgKMvabNxnGXXdusaAlMBEALw_wcB)
* 9g servo

## Setup

### Setup initial
```  
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y build-essential cmake git wget curl python3-dev python3-numpy python3-pip zip
sudo apt-get clean
```

### Setup SeedStudio Pi Hat
``` 
git clone https://github.com/respeaker/seeed-voicecard.git
cd seeed-voicecard
sudo ./install.sh
reboot
```

### Setup dlib and Raspberry Pi Camera
[Install and setup dlib + face_detection](https://gist.github.com/ageitgey/1ac8dbe8572f3f533df6269dab35df65)
```
sudo apt-get install python3-picamera
sudo pip3 install --upgrade picamera[array]
sudo pip3 install dlib face_recognition
```

### Setup PyAudio and Speech Recognition
```
sudo apt-get install python-pyaudio python3-pyaudio libpulse-dev
sudo pip3 install PocketSphinx pyaudio
```
