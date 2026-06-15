import requests
import re
import time

targets = [
    {
        "name": "Maharashtra Judicial Academy",
        "url": "https://mja.gov.in/sites/default/files/2025-01/BNSS_Girish_Agrawal.pdf",
        "pattern": r"/sites/default/files/.+\\.pdf$"
    },
    {
        "name": "National Diet Library Japan",
        "url": "https://ndlsearch.ndl.go.jp/books/R100000002-I031851437",
        "pattern": r"/books/[\w-]+"
    },
    {
        "name": "National Judicial Academy India",
        "url": "https://nja.gov.in/Newsletter/NJA%20Newsletter%20Jan%202024.pdf",
        "pattern": r"/(Newsletter|Journal|Annual_Report)/.+\\.pdf$"
    }
]

print("--- SMOKE TEST: BATCH 93 (Seed Promotion Batch 8) ---")

for t in targets:
    print(f"\nTesting {t['name']}:")
    try:
        headers = {"User-Agent": "Mozilla/5.0"}
        resp = requests.get(t['url'], headers=headers, timeout=15, verify=False)
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
