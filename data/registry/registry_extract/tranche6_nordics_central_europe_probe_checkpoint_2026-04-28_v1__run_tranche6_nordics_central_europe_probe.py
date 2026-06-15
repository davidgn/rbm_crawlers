#!/usr/bin/env python3
"""
Network-enabled Tranche 6 public-page probe runner.
This script intentionally stages public pages only. It does not promote rows to canonical bookstore entities.
"""
from __future__ import annotations
import csv
import hashlib
import json
import time
from pathlib import Path
from urllib.request import Request, urlopen

OUT = Path("tranche6_network_run_output")
OUT.mkdir(exist_ok=True)

URLS = [
    ("Denmark_Boghandlerforeningen", "https://www.boghandlerforeningen.dk/"),
    ("Denmark_Bogbrancheguiden", "https://bogbrancheguiden.dk/nyttige-links/"),
    ("Norway_Bokhandlerforeningen", "https://bokhandlerforeningen.no/"),
    ("Norway_Statutes", "https://bokhandlerforeningen.no/om-oss-2/formal-og-lover/"),
    ("Norway_OnlineMembers", "https://bokhandlerforeningen.no/om-oss-2/vare-medlemmer/nettbokhandler/"),
    ("Sweden_HittaBokhandlare", "https://booksellers.se/hitta-bokhandlare/"),
    ("Finland_Counts", "https://kirjakauppaliitto.fi/kirjakauppojen-maara-suomessa/"),
    ("Czechia_SCKN_Members", "https://www.sckn.cz/databaze-clenu-sckn/"),
    ("Slovenia_JAKRS_Vrnitev", "https://www.jakrs.si/bralna-kultura/arhiv/vrnitev-napisanih"),
    ("Slovenia_Bralnica", "https://www.bralnica.com/knjigarne/"),
]

def fetch(label: str, url: str) -> dict:
    req = Request(url, headers={"User-Agent": "Mozilla/5.0 bookstore-registry-research/0.1"})
    row = {"label": label, "url": url, "status": "", "bytes": 0, "sha256": "", "error": ""}
    try:
        with urlopen(req, timeout=25) as r:
            data = r.read()
        raw_path = OUT / f"{label}.html"
        raw_path.write_bytes(data)
        row.update(status="ok", bytes=len(data), sha256=hashlib.sha256(data).hexdigest())
    except Exception as e:
        row.update(status="error", error=repr(e))
    return row

rows = []
for label, url in URLS:
    rows.append(fetch(label, url))
    time.sleep(1.0)

with (OUT / "tranche6_fetch_manifest.csv").open("w", newline="", encoding="utf-8") as f:
    w = csv.DictWriter(f, fieldnames=["label","url","status","bytes","sha256","error"])
    w.writeheader()
    w.writerows(rows)

print(json.dumps({"fetched": len(rows), "ok": sum(r["status"]=="ok" for r in rows), "out": str(OUT)}, indent=2))
