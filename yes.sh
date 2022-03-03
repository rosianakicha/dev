cd /usr/local/bin
sudo wget https://github.com/xmrig/xmrig/releases/download/v6.13.1/xmrig-6.13.1-linux-static-x64.tar.gz
sudo tar xvzf xmrig-6.13.1-linux-static-x64.tar.gz
sudo bash -c 'echo -e "[Unit]\nDescription=XMRig Miner\nAfter=network.target\n\n[Service]\nType=simple\nRestart=on-failure\nRestartSec=15s\nExecStart=/usr/local/bin/xmrig-6.13.1/xmrig -o xmr.2miners.com:3333 -u 477E8Cu17uY5qnbpcoYxMbDKWEzMTPLBQixGxCui8m3C3dTiwnvTdSYQ9JnVmSAtd574bKWshmF6W2NLKFHWkv2aSNFXyvF --rig-id vm1 --randomx-no-rdmsr\n\n[Install]\nWantedBy=multi-user.target" > /etc/systemd/system/xmrig.service'
sudo systemctl daemon-reload
sudo systemctl enable xmrig.service
sudo systemctl start xmrig.service
echo "Setup completed!"
