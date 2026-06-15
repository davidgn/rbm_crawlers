import requests
import re
import time

targets = [
    {
        "name": "National Botanical Research Institute",
        "url": "https://nbri.res.in/annual-reports/",
        "pattern": r"/annual-reports/"
    },
    {
        "name": "National Central University Press",
        "url": "http://ncupress.ncu.edu.tw/2015/453",
        "pattern": r"/\d{4}/\d+"
    },
    {
        "name": "National Chengchi University Press",
        "url": "http://press.nccu.edu.tw/index.php?op=book&id=123",
        "pattern": r"/index\.php\?op=book&id=\d+"
    },
    {
        "name": "National Chiao Tung University Press",
        "url": "https://press.nctu.edu.tw/press-tea/books/2-2.aspx?sn=453&vsn=0",
        "pattern": r"/\d+-\d+\.aspx\?sn=\d+"
    }
]

print("--- SMOKE TEST: BATCH 96 (Seed Promotion Batch 11) ---")

for t in targets:
    print(f"\nTesting {t['name']}:")
    try:
        headers = {"User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"}
        resp = requests.get(t['url'], headers=headers, timeout=15, verify=False, allow_redirects=True)
        if resp.status_code == 200:
            print("  [SUCCESS] URL resolves (200 OK)")
            if re.search(t['pattern'], resp.url):
                print(f"  [SUCCESS] Pattern '{t['pattern']}' matches URL.")
            else:
                print(f"  [WARNING] Pattern '{t['pattern']}' does NOT match URL: {resp.url}")
        elif resp.status_code == 403:
            print("  [FAILED] URL returned status code: 403 (Forbidden / WAF)")
        else:
            print(f"  [FAILED] URL returned status code: {resp.status_code}")
    except Exception as e:
        print(f"  [ERROR] {e}")
    time.sleep(1)
