let "FT_LINE1 = 30"
let "FT_LINE2 = 40"

Cat /etc/passwd |sed -n "$FT_LINE1, $FT_LINE2 p" |awk 'NR % 2 != 0' |sed 's/:\(.*\)//g' |rev |sort -r |sed 's/\\n/, /g'
