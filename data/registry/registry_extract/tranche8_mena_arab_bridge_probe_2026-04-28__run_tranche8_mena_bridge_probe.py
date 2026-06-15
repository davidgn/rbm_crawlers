#!/usr/bin/env python3
from pathlib import Path
import csv
import requests
from bs4 import BeautifulSoup

SOURCES = [
    ("egypt_epa", "https://www.egyptianpublishers.org/members/"),
    ("arab_publishers", "https://www.arab-pa.org/en/shared/Publishers.aspx"),
    ("jordan_ujp", "https://www.unionjp.com/MembersEn.aspx"),
    ("uae_epa", "https://www.epa.org.ae/members"),
    ("saudi_pub_assoc", "https://publishing-association.org.sa/en/"),
    ("saudi_arablocal_noisy", "https://arablocal.com/business/category/book-stores"),
    ("qatar_qnl_libraries_out_of_scope", "https://www.qnl.qa/en/explore/directories/directory-of-libraries?title=All&type=881"),
    ("lebanon_atlebanon_negative", "https://www.atlebanon.com/ad-category/shopping-lebanon/book-stores-lebanon/"),
]

OUT = Path("tranche8_network_probe_output")
OUT.mkdir(exist_ok=True)

def fetch(name, url):
    r = requests.get(url, timeout=30, headers={"User-Agent":"Mozilla/5.0 bookstore-registry-probe"})
    (OUT / f"{name}.html").write_text(r.text, encoding="utf-8", errors="ignore")
    return r.text, r.status_code, r.url

rows = []
for name, url in SOURCES:
    try:
        html, status, final_url = fetch(name, url)
        soup = BeautifulSoup(html, "html.parser")
        text = " ".join(soup.get_text(" ").split())
        rows.append({
            "source_key": name,
            "url": url,
            "final_url": final_url,
            "status_code": status,
            "title": (soup.title.get_text(strip=True) if soup.title else ""),
            "text_chars": len(text),
            "snippet": text[:500]
        })
    except Exception as e:
        rows.append({"source_key": name, "url": url, "final_url": "", "status_code": "ERROR", "title": "", "text_chars": 0, "snippet": str(e)})

with open(OUT / "tranche8_fetch_log.csv", "w", newline="", encoding="utf-8") as f:
    w = csv.DictWriter(f, fieldnames=["source_key","url","final_url","status_code","title","text_chars","snippet"])
    w.writeheader()
    w.writerows(rows)

print(f"Wrote {OUT / 'tranche8_fetch_log.csv'}")
