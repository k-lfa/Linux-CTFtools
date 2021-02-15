echo "Install ffpassdecrypt"
git clone https://github.com/nyov/python-ffpassdecrypt $rootpath/ffpassdecrypt
ln -s $rootpath/ffpassdecrypt/ffpassdecrypt.py $binpath/ffpassdecrypt
ln -s $rootpath/ffpassdecrypt/firefox_passwd.py $binpath/firefox_passwd


echo "Install androidpatternlock"
git clone https://github.com/sch3m4/androidpatternlock $rootpath/androidpatternlock
ln -s $rootpath/androidpatternlock/aplc.py $binpath/androidpatternlock

echo "Install pwdump"
git clone https://github.com/moyix/creddump.git $rootpath/creddump
ln -s $rootpath/creddump/cachedump.py $binpath/cachedump
ln -s $rootpath/creddump/lsadump.py $binpath/lsadump
ln -s $rootpath/creddump/pwddump.py $binpath/pwdump


echo "Install pdfcrack"
apt-get install pdfcrack -y

echo "Install fcrackzip"
apt-get install fcrackzip -y

echo "Install RsaCtfTool"
git clone https://github.com/Ganapati/RsaCtfTool $rootpath/RsaCtfTool
apt-get install libgmp3-dev libmpc-dev -y
pip3 install -r $rootpath/RsaCtfTool/requirements.txt
ln -s $rootpath/RsaCtfTool/RsaCtfTool.py  $binpath/RsaCtfTool

echo "Install xortool"
pip3 install xortool

echo "Install Salt Pepper"
git clone https://github.com/penthium2/salt_pepper /tmp/salt-pepper
mv /tmp/salt-pepper $binpath/

echo "Install PassGen"
git clone https://github.com/Broham/PassGen $rootpath/PassGen
pip3 install -r $rootpath/PassGen/requirements.txt
ln -s $rootpath/PassGen/passgen.py $binpath/passgen

echo "Install pkcrack"
git clone https://github.com/keyunluo/pkcrack $rootpath/pkcrack
mkdir $rootpath/pkcrack/build
cd $rootpath/pkcrack/build
cmake ..
make
for bin in $(ls ../bin/ | grep -v "exe"); do ln -s $rootpath/pkcrack/bin/$bin $binpath/$bin ;done

echo "Install creddump tools"
git clone https://github.com/moyix/creddump $rootpath/creddump
for bin in $(ls $rootpath/creddump | grep "py"); do ln -s $rootpath/creddump/$bin $binpath/$bin ;done

echo "Install cuppy"
git clone https://github.com/Mebus/cupp $rootpath/cupp
ln -s $rootpath/cupp/cupp.py $binpath/cupp
