#!/usr/bin/env python3
import csv
import hashlib
import json
import re
import sys
from datetime import datetime, timezone
from pathlib import Path

import requests
from bs4 import BeautifulSoup

URL = "https://www.sabooksellers.com/bookshops/"
OUT = Path("south_africa_sabooksellers_harvest")
OUT.mkdir(exist_ok=True)

NOISE_RE = re.compile(r"\b(admin charge|bank transaction|credit interest|digital payment|monthly acc fee|transaction charge|tax monitor)\b", re.I)
EMAIL_RE = re.compile(r"[A-Z0-9._%+\-]+@[A-Z0-9.\-]+\.[A-Z]{2,}", re.I)
PHONE_RE = re.compile(r"(?:(?:\+|00)?27|0)?(?:\s?\d[\d\s()/.-]{5,}\d)$")

def sha256_bytes(b: bytes) -> str:
    return hashlib.sha256(b).hexdigest()

def classify(name: str, tail: str) -> tuple[str, str, str]:
    s = f"{name} {tail}".lower()
    flags = []
    if NOISE_RE.search(s) or not name.strip():
        return "non_entity_noise", "accounting_or_render_noise", "exclude_noise"
    if any(k in s for k in ["publisher", "publishers", "university press", "press african branch", "pasa", "book development council", "pearson", "penguin random house", "macmillan", "cambridge university press", "oxford university press"]):
        flags.append("publisher_or_institutional_member")
        return "publisher_or_institutional_member", ";".join(flags), "mixed_role_review"
    if any(k in s for k in ["distribution", "distributors", "logistics", "geodis", "globeflight", "on the dot"]):
        flags.append("distributor_or_supply_chain")
        return "distributor_or_supply_chain", ";".join(flags), "mixed_role_review"
    if any(k in s for k in ["takealot", "snapplify", "vital source"]):
        flags.append("online_retail_or_marketplace_member")
        return "online_retail_or_marketplace_member", ";".join(flags), "mixed_role_review"
    if "head office" in s:
        flags.append("chain_head_office")
    if any(k in s for k in ["stationer", "stationery", "office national", "school supplies", "office supplies"]):
        flags.append("stationery_hybrid")
        return "stationery_hybrid", ";".join(flags), "candidate_review"
    if any(k in s for k in ["bookshop", "bookstore", "bookseller", "booksellers", "book lounge", "book nook", "books & books", "book world", "bookworld", "book express", "book depot", "book supplies", "books only"]):
        flags.append("bookshop_or_bookseller")
        if "university" in s or "campus" in s:
            flags.append("campus_bookshop_or_bookseller")
            return "campus_bookshop_or_bookseller", ";".join(flags), "candidate_keep"
        return "bookshop_or_bookseller", ";".join(flags), "candidate_keep"
    if "book" in s or "books" in s:
        flags.append("book_trade_candidate")
        return "book_trade_candidate", ";".join(flags), "candidate_review"
    return "unknown_member_role", "needs_manual_role_review", "mixed_role_review"

def split_candidate(line: str) -> dict:
    raw = " ".join(line.split())
    email_match = EMAIL_RE.search(raw)
    email = email_match.group(0) if email_match else ""
    if email_match:
        name = raw[:email_match.start()].strip()
        tail = raw[email_match.end():].strip()
    else:
        name = raw.strip()
        tail = ""
    phone = ""
    phone_match = PHONE_RE.search(tail)
    if phone_match:
        phone = phone_match.group(0).strip()
        tail_wo_phone = tail[:phone_match.start()].strip()
    else:
        tail_wo_phone = tail
    role, flags, status = classify(name, tail)
    return {
        "entity_name": name,
        "raw_email": email,
        "raw_tail_after_email": tail,
        "raw_tail_without_terminal_phone": tail_wo_phone,
        "raw_phone_candidate": phone,
        "entity_role_primary": role,
        "role_flags": flags,
        "qa_status": status,
        "raw_line": raw,
        "source_url": URL,
    }

def main():
    resp = requests.get(URL, timeout=45, headers={"User-Agent": "bookstore-registry-probe/1.0 (+research; contact via source site)"})
    resp.raise_for_status()
    raw = resp.content
    (OUT / "south_africa_sabooksellers_bookshops_raw.html").write_bytes(raw)

    soup = BeautifulSoup(raw, "html.parser")
    text_lines = [ln.strip() for ln in soup.get_text("\n").splitlines() if ln.strip()]
    (OUT / "south_africa_sabooksellers_bookshops_text_lines.txt").write_text("\n".join(text_lines), encoding="utf-8")

    try:
        start = next(i for i, ln in enumerate(text_lines) if "Current members" in ln)
    except StopIteration:
        start = 0
    end = len(text_lines)
    for i, ln in enumerate(text_lines[start+1:], start+1):
        if "The professional association for booksellers" in ln:
            end = i
            break

    candidate_lines = []
    for idx, ln in enumerate(text_lines[start+1:end], start+2):
        if ln.lower().startswith("bookstore emailaddress"):
            continue
        candidate_lines.append((idx, ln))

    rows = []
    for idx, ln in candidate_lines:
        row = split_candidate(ln)
        row["rendered_line_number"] = idx
        rows.append(row)

    fieldnames = ["rendered_line_number","entity_name","raw_email","raw_tail_after_email","raw_tail_without_terminal_phone","raw_phone_candidate","entity_role_primary","role_flags","qa_status","raw_line","source_url"]
    with (OUT / "south_africa_sabooksellers_parsed_candidates.csv").open("w", newline="", encoding="utf-8") as f:
        w = csv.DictWriter(f, fieldnames=fieldnames)
        w.writeheader()
        w.writerows(rows)

    summary = {
        "source_url": URL,
        "fetched_at_utc": datetime.now(timezone.utc).isoformat(),
        "raw_html_sha256": sha256_bytes(raw),
        "rendered_text_line_count": len(text_lines),
        "candidate_line_count": len(candidate_lines),
        "qa_status_counts": {},
        "entity_role_counts": {},
    }
    for row in rows:
        summary["qa_status_counts"][row["qa_status"]] = summary["qa_status_counts"].get(row["qa_status"], 0) + 1
        summary["entity_role_counts"][row["entity_role_primary"]] = summary["entity_role_counts"].get(row["entity_role_primary"], 0) + 1

    (OUT / "south_africa_sabooksellers_harvest_summary.json").write_text(json.dumps(summary, indent=2, ensure_ascii=False), encoding="utf-8")
    print(json.dumps(summary, indent=2, ensure_ascii=False))

if __name__ == "__main__":
    main()
