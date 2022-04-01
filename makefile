
termux:
	apt install figlet toilet
	apt install curl jq ncurses-utils

ubuntu:
	sudo apt-get install figlet toilet ncurses-bin
	sudo apt-get install jq curl

run:
	chmod 0755 app.sh
	./app.sh