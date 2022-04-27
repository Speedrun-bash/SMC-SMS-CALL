#!/usr/bin/env bash

echo -e "\e[1;92m>\e[1;97m Compiled app.c"
if (gcc app.c -o app.out); then
	echo -e "\e[1;92m>\e[1;97m True"
else
	echo -e "\e[1;92m>\e[1;97m False"
fi
echo
echo -e "\e[1;91m> \e[1;97mRunning script"
trap "rm -rf app.out; exit" INT SIGINT
./app.out
