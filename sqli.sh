#!/bin/bash
urlsFile=$1
cat $urlsFile | qsreplace "'" | while read host do; do curl --silent --insecure $host | egrep -qs "(mysql_fetch_array|SQL syntax)" && echo "[*] POSSIBLE SQL INJECTION HERE $host" ; done
