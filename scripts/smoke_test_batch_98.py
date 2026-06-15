import requests
import re
import time

targets = [
    {
        "name": "Seoul National University Press",
        "url": "https://eng.snupress.com/book/category?md=view&goodsidx=3495",
        "pattern": r"goodsidx=\d+"
    },
    {
        "name": "South China University of Technology Press",
        "url": "http://www.scutpress.com.cn/product_detail.php?id=3830",
        "pattern": r"/product_detail\.php\?id=\d+"
    },
    {
        "name": "Southwest Jiaotong University Press",
        "url": "http://www.xnjdcbs.com/index.php?m=content&c=index&a=show&catid=10&id=1234",
        "pattern": r"a=show&catid=\d+&id=\d+"
    },
    {
        "name": "Scientific Publishers India",
        "url": "https://www.scientificpubonline.com/developing-digital-libraries",
        "pattern": r"/[^/]+$"
    },
    {
        "name": "ATLA Open Press",
        "url": "https://books.atla.com/atlapress/catalog/book/1",
        "pattern": r"/catalog/book/\d+"
    }
]

print("--- SMOKE TEST: BATCH 98 (Batch 15 & Theology) ---")

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
        else:
            print(f"  [FAILED] URL returned status code: {resp.status_code}")
    except Exception as e:
        print(f"  [ERROR] {e}")
    time.sleep(1)
