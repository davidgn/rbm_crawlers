import requests
import re
import time

targets = [
    {
        "name": "Aboriginal Studies Press",
        "url": "https://aiatsis.gov.au/shop/products/yawulyu",
        "pattern": r"/products/[\w-]+"
    },
    {
        "name": "Huia Publishers",
        "url": "https://huia.co.nz/products/matariki-the-star-of-the-year",
        "pattern": r"/products/[\w-]+"
    },
    {
        "name": "Magabala Books",
        "url": "https://www.magabala.com/products/the-seven-sisters",
        "pattern": r"/products/[\w-]+"
    },
    {
        "name": "Batchelor Press",
        "url": "https://batchelorpress.com/product/wagiman-plants-and-animals/",
        "pattern": r"/product/[\w-]+"
    },
    {
        "name": "Bridget Williams Books",
        "url": "https://www.bwb.co.nz/books/imagining-decolonisation/",
        "pattern": r"/books/[\w-]+"
    }
]

print("--- SMOKE TEST: BATCH 100 (Antipodean & Indigenous) ---")

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
