# QT5.12.4-raspian-Buster-EGLFS
Compile QT 5.12.4 on raspbian Buster and EGLFS support


Automated installation scripts to compile QT5 on Raspbian Buster  for Raspberry PI with EGLFS support This whole process takes about 4-6 The script is based on this tutorial 
http://www.tal.org/tutorials/building-qt-58-raspberry-pi-debian-stretch

The resulting image will work on any pi including Pi4 . For compiling you need minumum a Pi2 

Usage : Download raspbian Buster Lite from: https://www.raspberrypi.org/downloads/raspbian/ and install it on your SD card (the lite version will be enough)

After booting up your PI, follw the steps below :

If you use a pi with less then 2 GB ram then you will need to increase the swap file size 

Increase Rpi's swap size. As root, edit the file /etc/dphys-swapfile and modify the variable CONF_SWAPSIZE

CONF_SWAPSIZE=2048
Run dphys-swapfile setup which will create and initialize the file.

$ sudo dphys-swapfile swapon
Source : https://wpitchoune.net/tricks/raspberry_pi3_increase_swap_size.html

After increasing the swap size,

$ sudo raspi-config
Set GPU to 256 and enable ssh (ssh is optional)

$ sudo apt-get update
$ sudo apt-get install git
$ git clone https://github.com/MarkusIppy/QT5.12.4-raspian-Buster-EGLFS
$ cd QT5.12.4-raspian-Buster-EGLFS
$ sudo chmod +x compileQT.sh
$ ./compileQT.sh
