#!/bin/bash
apt-get update && apt-get install python3-pip python-pip -y

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

echo "Install volatility"
VOL_EXIST=$(which volatility)

if [ "$VOL_EXIST" == "" ];then
	git clone https://github.com/volatilityfoundation/volatility /tmp/volatility
	cd /tmp/volatility
	python2.7 setup.py install
	pip install distorm3
	mv /usr/local/bin/vol.py /usr/local/bin/volatility
fi

echo "Install MacOS volatility plugins"
git clone https://github.com/tribalchicken/volatility-filevault2 /tmp/
cp -a /tmp/filevault/plugins/mac/filevault2.py /usr/local/lib/python2.7/dist-packages/volatility-2.6.1-py2.7.egg/volatility/plugins/mac/mac_filevault2.py

echo "Install chainbreaker"
git clone https://github.com/AppLeU0/chainbreaker /usr/share/chainbreaker
ln -s /usr/share/chainbreaker/chainbreaker.py /usr/bin/chainbreaker

echo "Install MacOS FS Utility"
apt-get install libfvde-utils -y

echo "install mac_apt"
git clone https://github.com/ydkhatri/mac_apt /usr/share/mac_apt
apt-get update
apt-get install python3-pip libbz2-dev zlib1g-dev -y
pip3 install biplist tzlocal construct==2.8.10 xlsxwriter plistutils kaitaistruct lz4 pytsk3==20170802 libvmdk-python==20181227 pycryptodomex pyaff4
git clone --recursive https://github.com/ydkhatri/pylzfse /usr/share/mac_apt/pylzfse
cd /usr/share/mac_apt/pylzfse/pylzfe
python3 setup.py build
python3 setup.py install
wget https://github.com/libyal/libewf-legacy/releases/download/20140808/libewf-20140808.tar.gz -O /usr/share/mac_apt/libewf-20140807
cd /usr/share/mac_apt/libewf-20140807
python3 setup.py build
python3 setup.py install
ln -s /usr/share/mac_apt/mac_apt_artifact_only.py /usr/bin/
ln -s /usr/share/mac_apt/mac_apt.py /usr/bin/
chmod 755 /usr/share/*.py
cd

echo "Install APOLLO"
git clone https://github.com/mac4n6/APOLLO /usr/share/APOLLO
pip3 install simplekml six
ln -s /usr/share/APOLLO/apollo.py /usr/bin/
ln -s /usr/share/APOLLO/artemis.py /usr/bin

echo "Install apfs-fuse"
apt-get update
apt-get install fuse libfuse-dev bzip2 libbz2-dev cmake git libattr1-dev cmake-curses-gui libfuse3-dev -y
git clone https://github.com/sgan81/apfs-fuse.git /usr/share/apfs-fuse
cd /usr/share/apfs-fuse
git submodule init
git submodule update
mkdir build && cd build
cmake ..
make
mv apfs* /usr/bin/ && cd
