let "FT_LINE1 = 30"
let "FT_LINE2 = 40"

Cat /etc/passwd |sed '/^#/d' |sed 's/:\(.*\)//g' |sed -n 'n;p' |rev |sort -r |sed -n "$FT_LINE1, $FT_LINE2 p" |tr '\n' ' ' |sed 's/ /, /g' |sed 's/\(.*\),/\1.\%/' |sed 's/\% //'|tr -d '\n'
