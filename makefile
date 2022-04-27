
termux:
	apt install figlet toilet
	apt install curl jq ncurses-utils
	pip install -r membutuhkan.txt

ubuntu:
	sudo apt-get install figlet toilet ncurses-bin
	sudo apt-get install jq curl
	pip3 install -r membutuhkan.txt

run:
	bash build.sh
