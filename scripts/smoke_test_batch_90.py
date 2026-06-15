import requests
import re
import time

targets = [
    {
        "name": "Panjab University",
        "url": "https://publicationbureau.puchd.ac.in/show-generalbooks.php",
        "pattern": r"/show-generalbooks\.php"
    },
    {
        "name": "RFI India",
        "url": "https://rfiindia.com/publication/management-education-system-and-international-business-issue-1/",
        "pattern": r"/publication/[\w-]+"
    },
    {
        "name": "SUR Chile",
        "url": "http://www.sitiosur.cl/detalle-de-la-publicacion/?PID=3909",
        "pattern": r"/detalle-de-la-publicacion/\?PID=\d+"
    },
    {
        "name": "Sam Yan Press",
        "url": "https://samyanpress.bentoweb.com/th/product/1018991/on-tyranny",
        "pattern": r"/product/[\w-]+"
    }
]

print("--- SMOKE TEST: BATCH 90 (Seed Promotion Batch 13) ---")

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
