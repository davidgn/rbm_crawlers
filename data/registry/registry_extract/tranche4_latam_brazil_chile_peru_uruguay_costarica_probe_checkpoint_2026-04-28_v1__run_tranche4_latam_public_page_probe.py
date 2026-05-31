#!/usr/bin/env python3
"""
Tranche 4 public-page/export probe runner.

Purpose:
- network-enabled follow-up runner for Brazil ANL, Chile Frankfurt2027/MINCAP,
  Peru CPL, Uruguay CUL, and Costa Rica CCL.
- saves raw pages/exports, parses obvious static HTML blocks where possible,
  writes staging CSVs, and preserves source hashes.

Governance:
- This creates STAGING rows only.
- Do not promote bookstore-only rows until entity_role_primary classification and QA are complete.
"""

from __future__ import annotations

import csv
import hashlib
import json
import re
import sys
from datetime import datetime, timezone
from pathlib import Path
from urllib.parse import urlparse

try:
    import requests
except Exception as e:
    raise SystemExit("Install requests first: pip install requests") from e

try:
    from bs4 import BeautifulSoup
except Exception as e:
    raise SystemExit("Install beautifulsoup4 first: pip install beautifulsoup4") from e

OUT = Path("tranche4_network_run_output")
RAW = OUT / "raw"
OUT.mkdir(exist_ok=True)
RAW.mkdir(parents=True, exist_ok=True)

SOURCES = {
    "brazil_anl_associados": "https://www.anl.org.br/v1/associados/",
    "chile_frankfurt_directory": "https://frankfurt2027.cultura.gob.cl/ecosistema-editorial/directorio-de-contactos/",
    "chile_google_sheet_edit": "https://docs.google.com/spreadsheets/d/1KOim9Nn70VElqYEEQ7pz7aAmVNPJYKBmFi3TrFVRi6E/edit?usp=sharing",
    "chile_google_sheet_csv": "https://docs.google.com/spreadsheets/d/1KOim9Nn70VElqYEEQ7pz7aAmVNPJYKBmFi3TrFVRi6E/gviz/tq?tqx=out:csv",
    "peru_cpl_directorio": "https://cpl.org.pe/directorio-asociados/",
    "uruguay_cul_socios": "https://cul.com.uy/socios/",
    "costa_rica_ccl_activos": "https://cclcr.com/asociados/",
}

def sha256_bytes(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()

def safe_name(label: str, url: str) -> str:
    host = urlparse(url).netloc.replace(".", "_")
    return f"{label}__{host}"

def fetch(label: str, url: str) -> dict:
    print(f"FETCH {label}: {url}", file=sys.stderr)
    r = requests.get(url, timeout=45, headers={"User-Agent": "bookstore-registry-probe/1.0"})
    content = r.content
    ext = ".csv" if "csv" in url.lower() or "text/csv" in r.headers.get("content-type","").lower() else ".html"
    path = RAW / f"{safe_name(label,url)}{ext}"
    path.write_bytes(content)
    return {
        "label": label,
        "url": url,
        "status_code": r.status_code,
        "content_type": r.headers.get("content-type",""),
        "bytes": len(content),
        "sha256": sha256_bytes(content),
        "raw_path": str(path),
    }

def clean(s):
    return re.sub(r"\s+", " ", s or "").strip()

def parse_heading_blocks(raw_path: Path, source_label: str) -> list[dict]:
    soup = BeautifulSoup(raw_path.read_text(errors="replace"), "html.parser")
    rows = []
    for h in soup.find_all(re.compile("^h[1-6]$")):
        title = clean(h.get_text(" "))
        if not title or title.lower() in {"associados", "directorio asociados", "asociados activos"}:
            continue
        texts = []
        cur = h
        for _ in range(8):
            cur = cur.find_next_sibling()
            if cur is None or cur.name and re.match("^h[1-6]$", cur.name):
                break
            t = clean(cur.get_text(" ")) if hasattr(cur, "get_text") else ""
            if t:
                texts.append(t)
        link = ""
        a = h.find("a")
        if a and a.get("href"):
            link = a.get("href")
        rows.append({
            "source_label": source_label,
            "entity_name": title,
            "block_text": " | ".join(texts),
            "source_entity_url": link,
            "entity_role_primary_guess": role_guess(title, " ".join(texts)),
            "promotion_status": "staging_only_pending_qa",
        })
    return rows

def parse_cul_roles(raw_path: Path) -> list[dict]:
    # Basic fallback: rely on visible text sequence. Manual QA still required.
    txt = raw_path.read_text(errors="replace")
    soup = BeautifulSoup(txt, "html.parser")
    text_lines = [clean(x) for x in soup.get_text("\n").splitlines() if clean(x)]
    rows = []
    current_role = None
    for line in text_lines:
        if line in {"Librería", "Editorial", "Distribuidora"}:
            current_role = line
            continue
        if current_role and len(line) > 2 and line not in {"General", "Librerías", "Editoriales", "Distribuidoras"}:
            rows.append({
                "source_label": "uruguay_cul_socios",
                "entity_name": line,
                "source_role_label": current_role,
                "block_text": "",
                "source_entity_url": "",
                "entity_role_primary_guess": {"Librería":"bookstore_candidate","Editorial":"publisher","Distribuidora":"distributor"}.get(current_role, "review_needed"),
                "promotion_status": "staging_only_pending_dedupe_and_qa",
            })
            current_role = None
    return rows

def role_guess(name: str, text: str) -> str:
    s = f"{name} {text}".lower()
    if any(k in s for k in ["librería", "livraria", "bookstore", "bookshop", "libros"]):
        return "bookstore_candidate"
    if any(k in s for k in ["distribuidora", "distributor", "distribuições"]):
        return "distributor_or_wholesaler"
    if any(k in s for k in ["editorial", "editora", "publisher"]):
        return "publisher_or_editorial"
    if any(k in s for k in ["autor", "escritor"]):
        return "author_or_person"
    return "review_needed"

def write_csv(path: Path, rows: list[dict]):
    if not rows:
        path.write_text("", encoding="utf-8")
        return
    fields = []
    for row in rows:
        for k in row:
            if k not in fields:
                fields.append(k)
    with path.open("w", newline="", encoding="utf-8") as f:
        w = csv.DictWriter(f, fieldnames=fields)
        w.writeheader()
        w.writerows(rows)

def main():
    metadata = []
    for label, url in SOURCES.items():
        try:
            metadata.append(fetch(label, url))
        except Exception as e:
            metadata.append({"label": label, "url": url, "error": repr(e)})

    (OUT / "fetch_manifest.json").write_text(json.dumps(metadata, ensure_ascii=False, indent=2), encoding="utf-8")

    all_rows = []
    by_label = {m["label"]: m for m in metadata if "raw_path" in m}
    for label in ["brazil_anl_associados", "peru_cpl_directorio", "costa_rica_ccl_activos"]:
        if label in by_label:
            all_rows.extend(parse_heading_blocks(Path(by_label[label]["raw_path"]), label))
    if "uruguay_cul_socios" in by_label:
        all_rows.extend(parse_cul_roles(Path(by_label["uruguay_cul_socios"]["raw_path"])))

    # Chile CSV, if fetched successfully, is saved raw. Its schema may require manual inspection.
    if "chile_google_sheet_csv" in by_label and by_label["chile_google_sheet_csv"]["bytes"] > 0:
        all_rows.append({
            "source_label": "chile_google_sheet_csv",
            "entity_name": "[RAW CSV FETCHED - inspect schema before parse]",
            "block_text": by_label["chile_google_sheet_csv"]["raw_path"],
            "source_entity_url": SOURCES["chile_google_sheet_csv"],
            "entity_role_primary_guess": "unparsed_export",
            "promotion_status": "raw_export_fetched_pending_schema_inspection",
        })

    write_csv(OUT / "tranche4_staging_rows.csv", all_rows)

    summary = {
        "generated_at_utc": datetime.now(timezone.utc).isoformat(),
        "source_count": len(SOURCES),
        "fetch_count": len([m for m in metadata if "raw_path" in m]),
        "staging_row_count": len(all_rows),
        "governance": "staging_only; no bookstore promotion without QA",
    }
    (OUT / "run_summary.json").write_text(json.dumps(summary, ensure_ascii=False, indent=2), encoding="utf-8")
    print(json.dumps(summary, ensure_ascii=False, indent=2))

if __name__ == "__main__":
    main()
