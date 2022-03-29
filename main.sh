#!/usr/bin/env bash

# plugins bash moderen
. lib/moduler.sh
# depencies
Bash.import: text_display/colorama text_display/IO.ECHO
Bash.import: util/io.class util/IO.FUNC
Bash.import: util/operator util/IO.SYSTEM.var

# data dictionary
var data : $(
cat << EOF
{
	"nama":"bayu riski A.M",
	"github":"Bayu12345677",
	"youtube":"pejuang kentang",
	"hobi": ["scripting","upload reposittory"],
	"language":"bash"
}
EOF
)

declare data=${data/{ /{}; declare data=$(echo "$data"|sed -e 's; };};g');

var nama : $(Tulis.strN "$data"|jq -r .nama); Tulis.strN "nama     : ${nama}"
var git : $(Tulis.strN "$data"|jq -r .github); Tulis.strN "github   : ${git}"
var yt : $(Tulis.strN "$data"|jq -r .youtube); Tulis.strN "youtube  : ${yt}"
var ho : $(Tulis.strN "$data"|jq -r .hobi); Tulis.strN "hobi     : ${ho}"
var la : $(Tulis.strN "$data"|jq -r .language); Tulis.strN "language : ${la}"