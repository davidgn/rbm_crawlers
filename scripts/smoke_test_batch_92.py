import requests
import re
import time

targets = [
    {
        "name": "Indian Society of Remote Sensing",
        "url": "http://www.isrs-india.org/books-monographs.php",
        "pattern": r"/books-monographs\.php"
    },
    {
        "name": "LPP-UERJ",
        "url": "https://ppfh.com.br/publicacoes/",
        "pattern": r"/publicacoes/|/documentos/.+\\.pdf$"
    },
    {
        "name": "Law Commission of India",
        "url": "https://lawcommissionofindia.nic.in/reports/Report277.pdf",
        "pattern": r"/reports/.+\\.pdf$"
    },
    {
        "name": "National Archives of India",
        "url": "https://www.abhilekh-patal.in/jspui/handle/1/100",
        "pattern": r"/jspui/handle/\d+/\d+"
    }
]

print("--- SMOKE TEST: BATCH 92 (Seed Promotion Batch 7) ---")

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
