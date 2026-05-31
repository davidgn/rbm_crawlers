#!/usr/bin/env python3
import csv, hashlib, json, re, sys, time
from pathlib import Path
from urllib.request import Request, urlopen

OUT = Path("tranche3_raw_probe_output")
OUT.mkdir(exist_ok=True)

SOURCES = [
    ("ghana_gbdc", "https://www.gbdc.gov.gh/list-booksellers"),
    ("nigeria_ban_members", "https://nigerianbooksellers.org/members"),
    ("morocco_goafrica_private_directory", "https://www.goafricaonline.com/ma/annuaire/librairie"),
    ("italy_ali_librerie", "https://www.libraitaliani.it/librerie/"),
    ("italy_alai_ilab", "https://ilab.org/association/associazione-librai-antiquari-ditalia"),
    ("ukraine_ubi_map", "https://ubi.org.ua/en/activity/interaktivna-mapa-knizhkovo-ekosistemi"),
    ("ukraine_ubi_research_2025", "https://ubi.org.ua/en/activity/doslidzhennya/doslidzhennya-2025"),
]

def fetch(url):
    req = Request(url, headers={"User-Agent": "Mozilla/5.0 (bookstore-registry-probe; contact researcher)"})
    with urlopen(req, timeout=45) as r:
        return r.read(), dict(r.headers)

manifest = []
for slug, url in SOURCES:
    try:
        body, headers = fetch(url)
        path = OUT / f"{slug}.html"
        path.write_bytes(body)
        manifest.append({
            "slug": slug,
            "url": url,
            "status": "fetched",
            "bytes": len(body),
            "sha256": hashlib.sha256(body).hexdigest(),
            "content_type": headers.get("Content-Type", ""),
        })
        time.sleep(1)
    except Exception as e:
        manifest.append({"slug": slug, "url": url, "status": f"ERROR: {e}", "bytes": "", "sha256": "", "content_type": ""})

with (OUT / "fetch_manifest.csv").open("w", newline="", encoding="utf-8") as f:
    w = csv.DictWriter(f, fieldnames=["slug","url","status","bytes","sha256","content_type"])
    w.writeheader()
    w.writerows(manifest)

print(json.dumps({"output_dir": str(OUT), "manifest": manifest}, ensure_ascii=False, indent=2))
