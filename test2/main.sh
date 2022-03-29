#!/usr/bin/env bash

# data dictionary

declare data=$(
	cat << EOF
{
	"nama":"bayu riski A.M",
	"hobi":"scripting && membuat library bash shell",
	"github":"https://github.com/Bayu12345677",
	"youtube":"pejuang kentang",
	"pacar":"empty :v"
}
EOF
);
	data:(){
		echo "${1}"|jq -r .${@:2}
	};

	echo -ne "nama    : "; data: "$data" nama
	echo -ne "hobi    : "; data: "$data" hobi
	echo -ne "github  : "; data: "$data" github
	echo -ne "youtube : "; data: "$data" youtube
	echo -ne "pacar   : "; data: "$data" pacar