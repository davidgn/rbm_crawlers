import requests
import re
import time

targets = [
    {
        "name": "International Academic Research Institute",
        "url": "https://iiarpub.org/our-academic-journals/ijiep/",
        "pattern": r"/our-academic-journals/.+|/[a-z]+/$"
    },
    {
        "name": "Islamic Research Academy Delhi",
        "url": "https://airp.org.in/product-category/english/",
        "pattern": r"/product/[^/]+/?$|/product-category/.+"
    },
    {
        "name": "Legal and Judicial Research Center India (ILI)",
        "url": "https://www.ili.ac.in/pub.htm",
        "pattern": r"/pub\.htm|/pdf/.+\\.pdf$"
    },
    {
        "name": "Manipal Academy of Higher Education",
        "url": "https://manipaluniversalpress.publica.la/library",
        "pattern": r"/library/publication/.+"
    }
]

print("--- SMOKE TEST: BATCH 94 (Seed Promotion Batch 9) ---")

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
