#!/usr/bin/env python3
"""
Poland OBK / Ogólnopolska Baza Księgarń harvester scaffold.
Generated 2026-04-25 for the global bookstore-registry workflow.

Purpose:
  - discover the canonical unfiltered listing route if exposed;
  - crawl static OBK listing pages politely;
  - preserve raw HTML;
  - parse bookstore row blocks into a normalized CSV;
  - emit a manifest with hashes/counts.

This script requires normal outbound internet access. It intentionally keeps
obfuscated emails in source form; do not deobfuscate without a separate audit.
"""
from __future__ import annotations

import argparse
import csv
import hashlib
import json
import re
import time
from dataclasses import dataclass, asdict
from pathlib import Path
from typing import List, Dict, Optional
from urllib.parse import urljoin

import requests
from bs4 import BeautifulSoup

BASE = "https://obk.pik.org.pl"
DEFAULT_SEEDS = ["/", "/search", "/search?ng=y", "/search?o=157"]

@dataclass
class StoreRow:
    source_url: str
    source_page: Optional[int]
    store_name: str = ""
    network_or_chain_name: str = ""
    phone_raw: str = ""
    hours_raw: str = ""
    email_raw_obfuscated: str = ""
    website: str = ""
    street_address: str = ""
    postal_code: str = ""
    city: str = ""
    voivodeship: str = ""
    awards_certificates: str = ""
    raw_text: str = ""

def sha256_bytes(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()

def fetch(session: requests.Session, url: str, outdir: Path, sleep: float) -> Path:
    full = url if url.startswith("http") else urljoin(BASE, url)
    resp = session.get(full, timeout=45)
    resp.raise_for_status()
    data = resp.content
    name = re.sub(r"[^A-Za-z0-9_.-]+", "_", full.replace(BASE, "obk"))[:180] + ".html"
    path = outdir / "raw_html" / name
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_bytes(data)
    time.sleep(sleep)
    return path

def parse_rows(html: str, source_url: str, source_page: Optional[int]) -> List[StoreRow]:
    soup = BeautifulSoup(html, "html.parser")
    for tag in soup(["script", "style"]):
        tag.decompose()
    rows: List[StoreRow] = []
    headings = soup.find_all(re.compile(r"^h[1-6]$"))
    if headings:
        for h in headings:
            name = h.get_text(" ", strip=True)
            if not name or name.lower().startswith(("wizytówka", "artykuły")):
                continue
            parts = []
            for sib in h.next_siblings:
                if getattr(sib, "name", None) and re.match(r"h[1-6]", sib.name):
                    break
                if hasattr(sib, "get_text"):
                    parts.append(sib.get_text("\n", strip=True))
                elif isinstance(sib, str):
                    parts.append(sib.strip())
            raw = "\n".join(p for p in parts if p)
            row = extract_row(name, raw, source_url, source_page)
            if row.store_name:
                rows.append(row)
    if not rows:
        text = soup.get_text("\n")
        chunks = re.split(r"\n\s*\* \* \*\s*\n", text)
        for chunk in chunks:
            m = re.search(r"(?:^|\n)####\s+(.+)", chunk)
            if not m:
                continue
            name = m.group(1).strip()
            raw = chunk[m.end():]
            row = extract_row(name, raw, source_url, source_page)
            if row.store_name:
                rows.append(row)
    return rows

def extract_row(name: str, raw: str, source_url: str, source_page: Optional[int]) -> StoreRow:
    lines = [ln.strip() for ln in raw.splitlines() if ln.strip()]
    phones = [ln for ln in lines if ln.startswith("+48") or re.match(r"^\+?\d[\d\s-]{6,}$", ln)]
    hours = " | ".join(ln.replace("godziny otwarcia:", "").strip() for ln in lines if "godziny otwarcia" in ln.lower())
    websites = [ln for ln in lines if ln.startswith(("http://", "https://", "www."))]
    emailish = [ln for ln in lines if "@" in ln or " null" in ln]
    voiv = ""
    for ln in lines:
        if ln.startswith("woj."):
            voiv = ln.replace("woj.", "").replace("mapa", "").strip()
    postal_code = city = ""
    for ln in lines:
        m = re.match(r"^(\d{2}-\d{3})\s+(.+)$", ln)
        if m:
            postal_code, city = m.group(1), m.group(2).strip()
            break
    street = ""
    if postal_code:
        idx = next((i for i, ln in enumerate(lines) if ln.startswith(postal_code)), None)
        if idx is not None and idx > 0:
            street = lines[idx-1]
    awards = []
    capture = False
    for ln in lines:
        if "Nagrody/odznaczenia" in ln:
            capture = True
            continue
        if capture:
            if ln.startswith(("brak zdjęcia", "Previous", "Next")) or ln == "mapa":
                continue
            if re.search(r"\d{4}r\.?|Certyfikat|Księgarnia|Orły", ln):
                awards.append(ln)
    return StoreRow(
        source_url=source_url, source_page=source_page, store_name=name,
        phone_raw=" | ".join(phones), hours_raw=hours,
        email_raw_obfuscated=" | ".join(emailish), website=" | ".join(websites),
        street_address=street, postal_code=postal_code, city=city,
        voivodeship=voiv, awards_certificates="; ".join(awards), raw_text=raw[:5000]
    )

def discover_pagination(html: str) -> Dict[str, Optional[int]]:
    soup = BeautifulSoup(html, "html.parser")
    text = soup.get_text("\n")
    total = None
    m = re.search(r"Razem:\s*(\d+)", text)
    if m:
        total = int(m.group(1))
    pages = []
    for a in soup.find_all("a", href=True):
        label = a.get_text(" ", strip=True)
        if label.isdigit():
            pages.append(int(label))
    return {"total": total, "max_page_observed": max(pages) if pages else None}

def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--outdir", default="poland_obk_harvest_out")
    ap.add_argument("--sleep", type=float, default=1.0)
    ap.add_argument("--max-pages", type=int, default=0)
    args = ap.parse_args()

    outdir = Path(args.outdir)
    outdir.mkdir(parents=True, exist_ok=True)
    session = requests.Session()
    session.headers.update({"User-Agent": "bookstore-registry-research/0.1 (+polite; contact: local research)"})
    manifest = []
    rows: List[StoreRow] = []

    for seed in DEFAULT_SEEDS:
        full = urljoin(BASE, seed)
        path = fetch(session, full, outdir, args.sleep)
        html = path.read_text(encoding="utf-8", errors="replace")
        info = discover_pagination(html)
        manifest.append({"url": full, "path": str(path), "sha256": sha256_bytes(path.read_bytes()), **info})
        rows.extend(parse_rows(html, full, None))
        if args.max_pages and info.get("max_page_observed"):
            maxp = min(args.max_pages, int(info["max_page_observed"] or 0))
            if "?" in seed:
                base_path, query = seed.split("?", 1)
                for page in range(2, maxp + 1):
                    u = f"{base_path}/{page}?{query}"
                    p = fetch(session, urljoin(BASE, u), outdir, args.sleep)
                    h = p.read_text(encoding="utf-8", errors="replace")
                    inf = discover_pagination(h)
                    manifest.append({"url": urljoin(BASE, u), "path": str(p), "sha256": sha256_bytes(p.read_bytes()), **inf})
                    rows.extend(parse_rows(h, urljoin(BASE, u), page))

    seen = set(); deduped = []
    for r in rows:
        key = (r.store_name.strip().lower(), r.street_address.strip().lower(), r.postal_code, r.city.strip().lower())
        if key in seen:
            continue
        seen.add(key); deduped.append(r)

    fields = list(StoreRow("", None).__dict__.keys())
    with (outdir / "poland_obk_normalized_rows.csv").open("w", newline="", encoding="utf-8") as f:
        w = csv.DictWriter(f, fieldnames=fields)
        w.writeheader()
        for r in deduped:
            w.writerow(asdict(r))
    with (outdir / "poland_obk_fetch_manifest.json").open("w", encoding="utf-8") as f:
        json.dump({"manifest": manifest, "raw_row_count": len(rows), "deduped_row_count": len(deduped)}, f, ensure_ascii=False, indent=2)
    print(json.dumps({"raw_row_count": len(rows), "deduped_row_count": len(deduped), "outdir": str(outdir)}, ensure_ascii=False, indent=2))

if __name__ == "__main__":
    main()
