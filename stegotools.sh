#!/bin/bash
apt-get update 

echo "Install exiftool"
apt-get install exiftool -y

echo "Install LSB-steganography"
git clone https://github.com/RobinDavid/LSB-Steganography /usr/share/LSB-steganography
pip install -r /usr/share/LSB-steganography/requirements.txt
chmod 755 /usr/share/LSB-steganography/LSBSteg.py

echo "Install pdf-parser"
apt-get install pdf-parser -y

echo "Install steghide"
apt-get install steghide -y

echo "Install sng"
apt-get install sng -y

echo "Install stegsolve"
wget www.caesum.com/handbook/Stegsolve.jar -P /usr/share/stegsolve/
ln -s /usr/share/stegsolve/Stegsolve.jar /usr/bin/stegsolve.jar

echo "Install stegsnow"
apt-get install stegsnow -y

echo "Install stegosuite"
apt-get install stegosuite -y

echo "Install ffmpeg"
apt-get install ffmpeg -y

echo "Install pngcheck"
apt-get install pngcheck -y

echo "Install stegoveritas"
pip3 install stegoveritas
stegoveritas_install_deps

echo "Install outguess"
apt-get install outguess -y

echo "Install spectrology"
git clone https://github.com/solusipse/spectrology /usr/share/spectrology
ln -s /usr/share/spectrology/ /usr/bin

echo "Install cloacked-pixel"
git clone https://github.com/livz/cloacked-pixel /usr/share/cloacked-pixel
ln -s /usr/share/cloacked-pixel/lsb.py /usr/bin/cloackedpxl-lsb.py
ln -s /usr/share/cloacked-pixel/crypt.py /usr/bin/cloackedpxl-crypt.py

echo "Install AudioStego (Hideme)"
apt-get install -y  libboost-all-dev cmake
git clone https://github.com/danielcardeenas/AudioStego /usr/share/AudioStego
cd /usr/share/AudioStego
mkdir build
cd build
cmake ..
make
ln -s /usr/share/AudioStego/build/hideme /usr/bin/

echo "Install jphide & jpseek"
apt-get install libjpeg-dev -y
git clone https://github.com/h3xx/jphs /usr/share/jphs
cd /usr/share/jphs/
make
ln -s /usr/share/jphs/jpseek /usr/bin/
ln -s /usr/share/jphs/jphide /usr/bin/
cd

echo "Install zsteg"
git clone https://github.com/zed-0xff/zsteg.git /usr/share/zsteg
cd /usr/share/zsteg
gem install zsteg
cd
