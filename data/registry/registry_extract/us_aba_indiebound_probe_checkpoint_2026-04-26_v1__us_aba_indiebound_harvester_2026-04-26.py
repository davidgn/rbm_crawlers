#!/usr/bin/env python3
"""
U.S. ABA / IndieBound probe harvester
Generated 2026-04-26

Purpose:
- Fetch static ABA Bookseller Member Directory result pages for a query matrix.
- Preserve raw HTML, parse rough row blocks, and emit staged CSV.
- Optionally seed IndieBound locator URLs for later browser/network investigation.

This script is intentionally conservative: it does not claim a global count and it does
not promote rows to confirmed physical bookstores without role classification.
"""

from __future__ import annotations

import csv
import hashlib
import html
import os
import re
import time
from dataclasses import dataclass, asdict
from pathlib import Path
from typing import Iterable
from urllib.parse import quote
from urllib.request import Request, urlopen

USER_AGENT = "bookstore-registry-research-probe/1.0 (+polite; contact researcher)"
BASE = "https://www.bookweb.org/member_directory/search/ABAmember/results/{name}/{city}/{state}/{zip}"

# Keep this small for smoke testing; expand externally for a full harvest.
CITY_STATE_SEEDS = [
    ("Chicago", "IL"),
    ("New York", "NY"),
    ("Portland", "OR"),
    ("Denver", "CO"),
    ("Los Angeles", "CA"),
    ("Seattle", "WA"),
    ("Boston", "MA"),
    ("Minneapolis", "MN"),
    ("Washington", "DC"),
    ("Atlanta", "GA"),
]

NAME_TOKEN_SEEDS = list("abcdefghijklmnopqrstuvwxyz")

@dataclass
class FetchRecord:
    query_type: str
    query_value: str
    url: str
    status: str
    bytes: int
    sha256: str
    raw_path: str
    fetched_at_utc: str

@dataclass
class StagedRow:
    query_type: str
    query_value: str
    source_url: str
    source_query_result_count: str
    entity_name: str
    website: str
    address_raw: str
    phone_raw: str
    description_raw: str
    entity_role_primary_guess: str
    qa_note: str

def fetch_url(url: str, out_path: Path) -> FetchRecord:
    req = Request(url, headers={"User-Agent": USER_AGENT})
    with urlopen(req, timeout=45) as r:
        data = r.read()
    out_path.write_bytes(data)
    return FetchRecord(
        query_type="",
        query_value="",
        url=url,
        status="ok",
        bytes=len(data),
        sha256=hashlib.sha256(data).hexdigest(),
        raw_path=str(out_path),
        fetched_at_utc=time.strftime("%Y-%m-%dT%H:%M:%SZ", time.gmtime()),
    )

def normalize_space(s: str) -> str:
    return re.sub(r"\s+", " ", html.unescape(s or "")).strip()

def strip_tags(s: str) -> str:
    return normalize_space(re.sub(r"<[^>]+>", " ", s))

def extract_count(text: str) -> str:
    m = re.search(r"Search fetched\s+([0-9,]+)\s+results", text, re.I)
    return m.group(1).replace(",", "") if m else ""

def guess_role(name: str, address: str, desc: str) -> str:
    blob = f"{name} {address} {desc}".lower()
    if "online only" in blob or "online-only" in blob:
        return "online_only_bookstore"
    if "mobile" in blob or "pop-up" in blob or "pop up" in blob or "airstream" in blob:
        return "mobile_pop_up_bookstore"
    if "airport" in blob or "o'hare" in blob or "ord " in blob or "midway" in blob:
        return "airport_branch"
    if "comics" in blob or "comic" in blob:
        return "specialty_comics_or_non_general_bookstore"
    return "bookstore_location"

def parse_result_page(html_text: str, source_url: str, query_type: str, query_value: str) -> list[StagedRow]:
    # Lightweight parser. Better production version should use BeautifulSoup/lxml and page DOM tests.
    count = extract_count(strip_tags(html_text))
    # isolate main content after "Search fetched"
    text = html_text
    # anchor rows: link followed by address/phone/description until next link.
    anchor_pat = re.compile(r'<a href="(?P<href>[^"]+)"[^>]*>(?P<name>[^<]+)</a>(?P<tail>.*?)(?=<a href="[^"]+"|### Search Again|</body>)', re.S|re.I)
    rows = []
    for m in anchor_pat.finditer(text):
        name = strip_tags(m.group("name"))
        href = html.unescape(m.group("href"))
        if not name or name.lower() in {"search again","aba bookseller member directory","aba associate member directory"}:
            continue
        tail = strip_tags(m.group("tail"))
        # rough split: first comma-heavy line before phone/description. Keep raw to avoid overclaiming.
        phone_m = re.search(r"(\(?\d{3}\)?[- .]?\d{3}[- .]?\d{4}|\d{10})", tail)
        phone = phone_m.group(1) if phone_m else ""
        address_raw = tail[:phone_m.start()].strip(" ,") if phone_m else tail[:140].strip(" ,")
        desc = tail[phone_m.end():].strip() if phone_m else tail[140:].strip()
        # Heuristic: footer/nav links may leak; require address-ish content or bookstore-ish name.
        if not re.search(r"\b[A-Z]{2}\b|\d{5}|book|books|libr", address_raw + " " + name, re.I):
            continue
        rows.append(StagedRow(
            query_type=query_type,
            query_value=query_value,
            source_url=source_url,
            source_query_result_count=count,
            entity_name=name,
            website=href,
            address_raw=address_raw,
            phone_raw=phone,
            description_raw=desc,
            entity_role_primary_guess=guess_role(name, address_raw, desc),
            qa_note="staged_unreviewed",
        ))
    return rows

def main(out_dir: str = "us_aba_indiebound_harvest_out", delay: float = 1.5) -> None:
    out = Path(out_dir)
    raw = out / "raw_html"
    raw.mkdir(parents=True, exist_ok=True)
    fetch_records: list[FetchRecord] = []
    staged: list[StagedRow] = []

    # City/state queries.
    for city, state in CITY_STATE_SEEDS:
        url = BASE.format(name="0", city=quote(city), state=state, zip="0")
        raw_path = raw / f"city_{state}_{city.replace(' ', '_')}.html"
        try:
            fr = fetch_url(url, raw_path)
            fr.query_type = "city_state"
            fr.query_value = f"{city},{state}"
            fetch_records.append(fr)
            html_text = raw_path.read_text(errors="replace")
            staged.extend(parse_result_page(html_text, url, "city_state", f"{city},{state}"))
        except Exception as e:
            fetch_records.append(FetchRecord("city_state", f"{city},{state}", url, f"error:{e}", 0, "", str(raw_path), time.strftime("%Y-%m-%dT%H:%M:%SZ", time.gmtime())))
        time.sleep(delay)

    # Name token queries. These are supplemental, not global counts.
    for token in NAME_TOKEN_SEEDS:
        url = BASE.format(name=quote(token), city="0", state="0", zip="0")
        raw_path = raw / f"name_token_{token}.html"
        try:
            fr = fetch_url(url, raw_path)
            fr.query_type = "name_token"
            fr.query_value = token
            fetch_records.append(fr)
            html_text = raw_path.read_text(errors="replace")
            staged.extend(parse_result_page(html_text, url, "name_token", token))
        except Exception as e:
            fetch_records.append(FetchRecord("name_token", token, url, f"error:{e}", 0, "", str(raw_path), time.strftime("%Y-%m-%dT%H:%M:%SZ", time.gmtime())))
        time.sleep(delay)

    with (out / "aba_fetch_manifest.csv").open("w", newline="", encoding="utf-8") as f:
        w = csv.DictWriter(f, fieldnames=list(asdict(fetch_records[0]).keys()) if fetch_records else ["query_type"])
        w.writeheader()
        for r in fetch_records:
            w.writerow(asdict(r))

    with (out / "aba_staged_rows_raw_parse.csv").open("w", newline="", encoding="utf-8") as f:
        fields = list(asdict(staged[0]).keys()) if staged else list(StagedRow("", "", "", "", "", "", "", "", "", "", "").__dataclass_fields__.keys())
        w = csv.DictWriter(f, fieldnames=fields)
        w.writeheader()
        for r in staged:
            w.writerow(asdict(r))

    print(f"Wrote {len(fetch_records)} fetch records and {len(staged)} staged rows to {out}")
    print("Reminder: staged rows require dedupe and role QA before promotion.")

if __name__ == "__main__":
    main()
