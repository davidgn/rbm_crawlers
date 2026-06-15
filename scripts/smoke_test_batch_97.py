import requests
import re
import time

targets = [
    {
        "name": "PAU Press",
        "url": "https://www.pau.edu/index.php?menus=communication_centre",
        "pattern": r"/index\.php\?menus=(communication_centre|extension_education).+"
    },
    {
        "name": "RIMS Kyoto",
        "url": "https://www.kurims.kyoto-u.ac.jp/~kyodo/kokyuroku/contents/2166.html",
        "pattern": r"/~kyodo/kokyuroku/contents/\d+\.html|/~prims/contents/\d+\.html"
    },
    {
        "name": "PUI Reunion",
        "url": "https://pui.univ-reunion.fr/les-nouveautes/demons-et-merveilles",
        "pattern": r"/les-nouveautes/[\w-]+"
    },
    {
        "name": "PRIC China",
        "url": "http://journal.polar.org.cn/EN/item/details.do?id=1",
        "pattern": r"/CN/item/|/EN/item/"
    }
]

print("--- SMOKE TEST: BATCH 97 (Seed Promotion Batch 12) ---")

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
