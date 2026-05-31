#!/usr/bin/env python3
"""
Tranche 2 bookstore-registry public-page harvest runner — network-enabled runtime required.

Generated 2026-04-26. This script fetches only public pages and writes raw HTML plus
parsed staging CSVs. It is intentionally conservative: rows are staging rows until QA.
"""
import argparse, csv, hashlib, json, re, time
from pathlib import Path
from urllib.parse import urljoin

import requests
from bs4 import BeautifulSoup

HEADERS = {"User-Agent": "GSBPDb-bookstore-registry-research/0.1 (+public-source-audit; respectful crawl)"}

def sha256_bytes(b):
    return hashlib.sha256(b).hexdigest()

def fetch(url, outdir, label, sleep=1.0):
    outdir = Path(outdir)
    outdir.mkdir(parents=True, exist_ok=True)
    r = requests.get(url, headers=HEADERS, timeout=30)
    r.raise_for_status()
    p = outdir / f"{label}.html"
    p.write_bytes(r.content)
    meta = {"url": url, "label": label, "status_code": r.status_code, "bytes": len(r.content), "sha256": sha256_bytes(r.content), "path": str(p)}
    time.sleep(sleep)
    return r.text, meta

def write_csv(path, rows):
    path = Path(path)
    if not rows:
        path.write_text("", encoding="utf-8")
        return
    keys = []
    for row in rows:
        for k in row:
            if k not in keys:
                keys.append(k)
    with path.open("w", newline="", encoding="utf-8") as f:
        w = csv.DictWriter(f, fieldnames=keys)
        w.writeheader()
        w.writerows(rows)

def parse_camlibro_map(html):
    soup = BeautifulSoup(html, "html.parser")
    text = soup.get_text("\n")
    chunks = [c.strip() for c in re.split(r"\n\s*\*\s*\*\s*\*\s*\n", text) if "Ciudad:" in c and "Dirección:" in c]
    rows = []
    for c in chunks:
        lines = [ln.strip() for ln in c.splitlines() if ln.strip()]
        name = lines[0] if lines else ""
        city = addr = phone = ""
        for ln in lines:
            if ln.startswith("Ciudad:"):
                city = ln.split(":", 1)[1].strip()
            elif ln.startswith("Dirección:"):
                addr = ln.split(":", 1)[1].strip()
            elif ln.startswith("Teléfono:"):
                phone = ln.split(":", 1)[1].strip()
        rows.append({"source_name": "Camlibro", "entity_name": name, "city": city, "address_line": addr, "phone": phone, "profile_url": "https://librerias.camlibro.com.co/mapa"})
    return rows

def parse_ba_az(html, base="https://www.booksellers.org.uk/"):
    soup = BeautifulSoup(html, "html.parser")
    rows = []
    for h in soup.find_all("h2"):
        name = h.get_text(" ", strip=True)
        if not name or name.upper() in {"SEARCH AGAIN"}:
            continue
        block, detail = [], ""
        node = h
        for _ in range(25):
            node = node.find_next_sibling()
            if node is None or node.name == "h2":
                break
            txt = node.get_text(" ", strip=True) if hasattr(node, "get_text") else ""
            if txt:
                block.append(txt)
            if hasattr(node, "find"):
                a = node.find("a", href=True)
                if a and "Bookshop-Details" in a["href"]:
                    detail = urljoin(base, a["href"])
        if block:
            rows.append({"source_name": "Booksellers Association", "entity_name": name, "raw_block": " | ".join(block), "profile_url": detail})
    return rows

def parse_genialokal_state(html, base="https://www.genialokal.de"):
    soup = BeautifulSoup(html, "html.parser")
    rows, seen = [], set()
    for a in soup.find_all("a", href=True):
        href = a["href"]
        name = a.get_text(" ", strip=True)
        if "/buchhandlung/" in href and name:
            key = (name, href)
            if key not in seen:
                seen.add(key)
                rows.append({"source_name": "genialokal", "entity_name": name, "profile_url": urljoin(base, href)})
    return rows

def parse_buchhandel_category(html, base="https://buchhandel.at"):
    soup = BeautifulSoup(html, "html.parser")
    rows = []
    for h in soup.find_all(["h2", "h3"]):
        name = h.get_text(" ", strip=True)
        if not name or name.lower() in {"kontakt"}:
            continue
        a = h.find("a", href=True)
        href = a["href"] if a else ""
        if not href:
            nxt = h.find_next("a", string=re.compile("MEHR", re.I))
            href = nxt["href"] if nxt and nxt.has_attr("href") else ""
        rows.append({"source_name": "buchhandel.at", "entity_name": name, "profile_url": urljoin(base, href) if href else ""})
    return rows

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--outdir", default="tranche2_harvest_run_2026-04-26")
    args = ap.parse_args()
    out = Path(args.outdir)
    out.mkdir(parents=True, exist_ok=True)
    meta = []
    jobs = [
        ("camlibro_mapa", "https://librerias.camlibro.com.co/mapa", parse_camlibro_map),
        ("ba_shop_A", "https://www.booksellers.org.uk/bookshopsearch.aspx?shop=A", parse_ba_az),
        ("genialokal_nrw", "https://www.genialokal.de/Haendler/Nordrhein-Westfalen/", parse_genialokal_state),
        ("buchhandel_at_buchhandlung", "https://buchhandel.at/buchhandlungskategorie/02-buchhandlung/", parse_buchhandel_category),
    ]
    for label, url, parser in jobs:
        try:
            html, m = fetch(url, out / "raw", label)
            meta.append(m)
            rows = parser(html)
            write_csv(out / f"{label}_staging_rows.csv", rows)
        except Exception as e:
            meta.append({"url": url, "label": label, "error": repr(e)})
    (out / "download_manifest.json").write_text(json.dumps(meta, ensure_ascii=False, indent=2), encoding="utf-8")

if __name__ == "__main__":
    main()
