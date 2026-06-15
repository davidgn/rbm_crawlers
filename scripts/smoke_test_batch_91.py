import requests
import re
import time

targets = [
    {
        "name": "Shaanxi Normal UP",
        "url": "http://www.snupress.com.cn/bookdetails.aspx?id=3830",
        "pattern": r"/bookdetails\.aspx\?id=\d+|/product_detail\.aspx\?id=\d+"
    },
    {
        "name": "Sun Yat-sen UP",
        "url": "http://www.zsup.com.cn/book/detail?id=1234",
        "pattern": r"/book/detail\?id=\d+"
    },
    {
        "name": "Tokyo National Museum",
        "url": "https://www.tnm.jp/modules/r_publication/index.php?controller=exhibition",
        "pattern": r"/modules/r_publication/index\.php\?controller=[\w-]+"
    },
    {
        "name": "Silpakorn University Repository",
        "url": "https://sure.su.ac.kr/xmlui/handle/123456789/1",
        "pattern": r"/xmlui/handle/\d+/\d+"
    }
]

print("--- SMOKE TEST: BATCH 91 (Seed Promotion Batch 14) ---")

for t in targets:
    print(f"\nTesting {t['name']}:")
    try:
        headers = {"User-Agent": "Mozilla/5.0"}
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
