import requests
import re
import time

targets = [
    {
        "name": "Pacific Manuscripts Bureau",
        "url": "https://asiapacific.anu.edu.au/pambu/catalogue/index.php/pmb1414",
        "pattern": r"/index\.php/(pmb\d+|doc\d+)"
    },
    {
        "name": "Te Tākupu",
        "url": "https://tetakupu.wananga.com/products/te-moroiti-me-te-moroiti-the-tiny-and-the-tiny",
        "pattern": r"/products/[\w-]+"
    },
    {
        "name": "Images Publishing Group",
        "url": "https://imagespublishing.com/us/book/studio-sklim/",
        "pattern": r"/book/[\w-]+"
    },
    {
        "name": "Land Information NZ",
        "url": "https://www.linz.govt.nz/resources/standard-boundary-demarcation-standard-2022",
        "pattern": r"/resources/[\w-]+"
    }
]

print("--- SMOKE TEST: BATCH 102 (Batch 19 & Backlog Pass 3) ---")

for t in targets:
    print(f"\nTesting {t['name']}:")
    try:
        headers = {"User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"}
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
