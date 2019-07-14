#!/bin/bash

# QT5.12.4 Installation script for for on Debian Buster

echo "Add user pi to the render group"

sudo gpasswd -a pi render

echo "Install QT5.12.4 on rasbian Buster" 
cd
sudo apt-get -y --force-yes update
sudo apt-get -y --force-yes upgrade

echo "Install needed packages"
sudo apt-get install git
sudo apt-get install -y sense-hat libatspi-dev build-essential libfontconfig1-dev libdbus-1-dev libfreetype6-dev libicu-dev libinput-dev libxkbcommon-dev libsqlite3-dev libssl-dev libpng-dev libjpeg-dev libglib2.0-dev libraspberrypi-dev
sudo apt-get install -y bluez libbluetooth-dev
sudo apt-get install -y libasound2-dev pulseaudio libpulse-dev libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-ugly gstreamer1.0-plugins-bad gstreamer1.0-pulseaudio gstreamer1.0-tools gstreamer1.0-alsa gstreamer-tools
sudo apt-get install -y libpq-dev libmariadbclient-dev clang
sudo apt-get install -y libegl1-mesa-dev libgbm-dev libgles2-mesa-dev mesa-common-dev
sudo apt-get install -y clang
sudo apt-get install -y libclang-dev

echo "Download QT 5.12.4 Source code"
wget http://download.qt.io/official_releases/qt/5.12/5.12.4/single/qt-everywhere-src-5.12.4.tar.xz

echo "Untar Source code"
tar xf qt-everywhere-src-5.12.4.tar.xz

echo "Delete source tarball to save some space"
sudo rm -r qt-everywhere-src-5.12.4.tar.xz

echo "Create Shadow build directory"
cd
mkdir buildQT
cd buildQT

echo "create and Change ownership of QT install folder"
sudo mkdir /opt/QT5
sudo chown pi:pi /opt/QT5
sudo cp /home/pi/QT5.12.5-raspbiabn-Buster-EGLFS\eglfs.json /opt/QT5

echo "Configure QT "

PKG_CONFIG_LIBDIR=/usr/lib/arm-linux-gnueabihf/pkgconfig PKG_CONFIG_SYSROOT_DIR=/ \../qt-everywhere-src-5.12.4/configure -v -opengl es2 -eglfs -no-pch -no-gtk -device linux-rasp-pi3-vc4-g++ \-device-option CROSS_COMPILE=/usr/bin/ -opensource -confirm-license -reduce-exports \-force-pkg-config -nomake examples -no-compile-examples -skip qtwayland -skip qtwebengine -release \-qt-pcre -evdev -glib -gstreamer -prefix /opt/QT5

echo "Compile QT with 4 cores "
make -j4


echo "Install QT on the system "
make install


echo "Add enviroment variables to bashrc"
echo 'export LD_LIBRARY_PATH=/opt/QT5/lib' >> ~/.bashrc 
echo 'export PATH=/opt/QT5/bin:$PATH' >> ~/.bashrc 
source ~/.bashrc

echo "Install Sense hat libraries"
sudo apt-get install sense-hat

echo "Install Lorn Potters Sensehat Plugin on the system"
mkdir /home/pi/senshatplugin
git clone https://github.com/lpotter/qsensors-sensehatplugin.git /home/pi/senshatplugin
cd /home/pi/senshatplugin
qmake
make -j4
sudo make install

# uncomment the lines below to remove the build and source folders automatically
# Delete shadow build directory
#cd
#sudo rm -r build

# Delete source code folder
#sudo rm -r qt-everywhere-opensource-src-5.12.4
