#!/bin/bash
apt-get update

echo "Install kpartx"
apt-get install -y kpartx

echo "Install exiftool"
apt-get install -y exiftool

echo "Install Ghex"
apt-get install -y ghex

echo "Install PNGCheck"
apt-get install -y pngcheck

echo "Install oletools"
pip install oletools
pip3 install oletools


