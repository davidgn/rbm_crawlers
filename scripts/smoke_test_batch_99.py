import requests
import re
import time

targets = [
    {
        "name": "Social Sciences Academic Press China",
        "url": "https://www.ssap.com.cn/c/2019-03-07/1075804.shtml",
        "pattern": r"/c/\d{4}-\d{2}-\d{2}/\d+\.shtml"
    },
    {
        "name": "Xiamen University Press",
        "url": "https://xupress.xmu.edu.cn/Book/Detail?id=123",
        "pattern": r"/Book/|/product/"
    },
    {
        "name": "IxTheo",
        "url": "https://ixtheo.de/Record/1662931263",
        "pattern": r"/Record/\d+"
    },
    {
        "name": "Christian Book Awards (ECPA)",
        "url": "https://christianbookawards.com/winners.html",
        "pattern": r"/winners\.html|/finalists\.html"
    }
]

print("--- SMOKE TEST: BATCH 99 (Batch 16 & Theology II) ---")

for t in targets:
    print(f"\nTesting {t['name']}:")
    try:
        headers = {"User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"}
        resp = requests.get(t['url'], headers=headers, timeout=15, verify=False, allow_redirects=True)
        if resp.status_code == 200:
            print(f"  [SUCCESS] URL resolves (200 OK)")
            if re.search(t['pattern'], resp.url):
                print(f"  [SUCCESS] Pattern '{t['pattern']}' matches URL.")
            else:
                print(f"  [WARNING] Pattern '{t['pattern']}' does NOT match URL: {resp.url}")
        else:
            print(f"  [FAILED] URL returned status code: {resp.status_code}")
    except Exception as e:
        print(f"  [ERROR] {e}")
    time.sleep(1)
