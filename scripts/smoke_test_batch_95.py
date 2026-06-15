import requests
import re
import time

targets = [
    {
        "name": "Maritime Research Center India",
        "url": "https://knowledge.udafoundation.in/index.php/2024/01/01/sample-article/",
        "pattern": r"/index\.php/\d{4}/\d{2}/\d{2}/[\w-]+"
    },
    {
        "name": "Museu Histórico Nacional Brasil",
        "url": "https://mhn.museus.gov.br/publicacoes/",
        "pattern": r"/publicacoes/|/biblioteca-virtual/"
    },
    {
        "name": "Museu Nacional UFRJ",
        "url": "http://museunacional.ufrj.br/publicacoes/",
        "pattern": r"/publicacoes/"
    },
    {
        "name": "Museu de Arte Moderna Rio",
        "url": "https://mam.rio/publicacoes/",
        "pattern": r"/publicacoes/|/livros/"
    }
]

print("--- SMOKE TEST: BATCH 95 (Seed Promotion Batch 10) ---")

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
