#!/usr/bin/env python3
"""
Spain CEGAL / TodosTusLibros bookstore-network harvester.
Generated from governed probe 2026-04-25.

Purpose:
  1. Crawl public paginated /librerias listing pages.
  2. Extract /libreria/<slug>_<id> profile URLs plus listing-level name/address snippets.
  3. Crawl profile pages and normalize visible public store contact fields.
  4. Write raw HTML, CSV ledgers, and SHA-256 manifest.

Notes:
  - This script is intentionally polite and conservative.
  - It does not harvest title-level inventory into the bookstore registry.
  - If the site changes its HTML, preserve raw_html and update parse patterns.
"""
from __future__ import annotations
import csv
import hashlib
import html
import random
import re
import sys
import time
from dataclasses import dataclass, asdict
from pathlib import Path
from urllib.parse import urljoin
from urllib.request import Request, urlopen

BASE = 'https://www.todostuslibros.com'
OUT = Path('spain_cegal_ttl_harvest_output')
RAW = OUT / 'raw_html'
OUT.mkdir(exist_ok=True)
RAW.mkdir(exist_ok=True)
USER_AGENT = 'Mozilla/5.0 (compatible; bookstore-registry-research/2026-04-25; polite offline script)'
SLEEP_SECONDS = 1.5
MAX_PAGES_DEFAULT = 40

@dataclass
class ListingRow:
    listing_page: int
    source_profile_url: str
    source_record_id: str
    entity_name: str
    listing_address_raw: str
    listing_city: str
    listing_province: str

@dataclass
class ProfileRow:
    source_profile_url: str
    source_record_id: str
    entity_name: str
    street_address: str
    postal_code: str
    city: str
    province: str
    hours_raw: str
    phone_raw: str
    email: str
    website: str
    parse_note: str

def fetch(url: str, dest: Path) -> str:
    req = Request(url, headers={'User-Agent': USER_AGENT, 'Accept-Language':'es,en;q=0.8'})
    with urlopen(req, timeout=45) as r:
        data = r.read()
    dest.write_bytes(data)
    return data.decode('utf-8', 'replace')

def sha256_path(p: Path) -> str:
    h=hashlib.sha256()
    with p.open('rb') as f:
        for chunk in iter(lambda:f.read(65536), b''):
            h.update(chunk)
    return h.hexdigest()

def strip_tags(s: str) -> str:
    s = re.sub(r'<script.*?</script>', ' ', s, flags=re.S|re.I)
    s = re.sub(r'<style.*?</style>', ' ', s, flags=re.S|re.I)
    s = re.sub(r'<[^>]+>', ' ', s)
    s = html.unescape(s)
    return re.sub(r'\s+', ' ', s).strip()

def extract_record_id(url: str) -> str:
    m = re.search(r'_(\d+)(?:$|[/?#])', url)
    return m.group(1) if m else ''

def parse_listing(html_text: str, page: int) -> list[ListingRow]:
    # Profiles appear as links like /libreria/name_123 followed by address text.
    rows=[]
    link_re = re.compile(r'<a[^>]+href="(?P<href>/libreria/[^"]+_\d+)"[^>]*>(?P<name>.*?)</a>', re.S|re.I)
    matches = list(link_re.finditer(html_text))
    for i, m in enumerate(matches):
        href = urljoin(BASE, html.unescape(m.group('href')))
        name = strip_tags(m.group('name'))
        # skip duplicate "Más info" links if anchor text is not a name
        if not name or name.lower().startswith('más info') or name.lower() in {'home'}:
            continue
        start = m.end()
        end = matches[i+1].start() if i+1 < len(matches) else start + 1000
        chunk_text = strip_tags(html_text[start:end])
        # cut before buttons/modal text
        chunk_text = re.split(r'\bMás info\b|\bAñadir a favoritas\b|\bSuscripción\b', chunk_text, maxsplit=1)[0].strip(' ;')
        addr = chunk_text
        city = province = ''
        parts=[p.strip() for p in addr.rsplit(',', 2)]
        if len(parts) >= 3:
            listing_address=', '.join(parts[:-2]).strip()
            city=parts[-2]
            province=parts[-1]
        else:
            listing_address=addr
        rows.append(ListingRow(page, href, extract_record_id(href), name, listing_address, city, province))
    # de-dup by URL
    seen=set(); out=[]
    for r in rows:
        if r.source_profile_url in seen: continue
        seen.add(r.source_profile_url); out.append(r)
    return out

def parse_profile(html_text: str, url: str) -> ProfileRow:
    text = strip_tags(html_text)
    # h1: first occurrence after profile logo; robust fallback to title-like URL slug
    m = re.search(r'#\s*([^#]+?)(?:\s+\*\s+|\s+-\s+)', html_text)
    name = ''
    h1 = re.search(r'<h1[^>]*>(.*?)</h1>', html_text, flags=re.S|re.I)
    if h1: name=strip_tags(h1.group(1))
    # Address pattern from observed profile:
    street=postal=city=province=''
    am = re.search(r'\*\s*([^*\n]+?),\s*(\d{5}),\s*Ciudad:\s*([^,]+),\s*Provincia:\s*([^\n<]+)', html_text)
    if am:
        street=strip_tags(am.group(1)); postal=am.group(2); city=strip_tags(am.group(3)); province=strip_tags(am.group(4))
    else:
        # fallback on stripped text around Ciudad / Provincia
        am = re.search(r'([^\n]+?),\s*(\d{5}),\s*Ciudad:\s*([^,]+),\s*Provincia:\s*([^\s]{2,}(?:\s+[^*]+?)?)\s+(?:\*|Información)', text)
        if am:
            street=am.group(1).strip(); postal=am.group(2); city=am.group(3).strip(); province=am.group(4).strip()
    email_match = re.search(r'[\w.\-+%]+@[\w.\-]+\.[A-Za-z]{2,}', text)
    email_addr = email_match.group(0) if email_match else ''
    # website href near Ver página web
    site=''
    wm = re.search(r'<a[^>]+href="([^"]+)"[^>]*>\s*Ver página web\s*</a>', html_text, flags=re.S|re.I)
    if wm: site=html.unescape(wm.group(1))
    # crude phone: digits near Ver página web or before email
    phone=''
    pm = re.search(r'((?:\+?\d[\d\s().-]{5,}\d)(?:\s+\+?\d[\d\s().-]{5,}\d)*)\s+Ver página web', text)
    if pm: phone = pm.group(1).strip()
    # hours: usually text between address and phone; difficult; preserve note only if obvious
    hours=''
    if postal and phone:
        # extract between address province and phone
        mm = re.search(re.escape(province)+r'\s+(.*?)\s+'+re.escape(phone), text)
        if mm: hours=mm.group(1).strip()
    note='parsed_by_regex_v1' if (name and street) else 'partial_parse_review_needed'
    return ProfileRow(url, extract_record_id(url), name, street, postal, city, province, hours, phone, email_addr, site, note)

def write_csv(path: Path, rows, cls):
    fields=list(cls.__dataclass_fields__.keys())
    with path.open('w', newline='', encoding='utf-8') as f:
        w=csv.DictWriter(f, fieldnames=fields)
        w.writeheader()
        for r in rows: w.writerow(asdict(r))

def main():
    max_pages = int(sys.argv[1]) if len(sys.argv)>1 else MAX_PAGES_DEFAULT
    listing_rows=[]
    for page in range(1, max_pages+1):
        url = f'{BASE}/librerias' if page == 1 else f'{BASE}/librerias?page={page}&seed=0.96685450522548'
        print('fetch listing', page, url, file=sys.stderr)
        try:
            html_text=fetch(url, RAW/f'listing_page_{page:03d}.html')
        except Exception as e:
            print('listing fetch failed', page, repr(e), file=sys.stderr); break
        rows=parse_listing(html_text, page)
        print(' rows', len(rows), file=sys.stderr)
        if not rows and page>1: break
        listing_rows.extend(rows)
        # Stop after observed final page if page text lacks next? keep max_pages default safe.
        time.sleep(SLEEP_SECONDS + random.random())
    # de-dup profiles
    dedup={r.source_profile_url:r for r in listing_rows}
    listing_rows=list(dedup.values())
    write_csv(OUT/'ttl_listing_profile_url_ledger.csv', listing_rows, ListingRow)
    profile_rows=[]
    for i, r in enumerate(listing_rows, 1):
        print('fetch profile', i, r.source_profile_url, file=sys.stderr)
        try:
            h=fetch(r.source_profile_url, RAW/f'profile_{r.source_record_id or i}.html')
            profile_rows.append(parse_profile(h, r.source_profile_url))
        except Exception as e:
            profile_rows.append(ProfileRow(r.source_profile_url, r.source_record_id, r.entity_name, '', '', '', '', '', '', '', '', f'fetch_or_parse_failed:{e!r}'))
        time.sleep(SLEEP_SECONDS + random.random())
    write_csv(OUT/'ttl_profile_normalized.csv', profile_rows, ProfileRow)
    # artifact manifest
    with (OUT/'ttl_harvest_artifact_manifest.csv').open('w', newline='', encoding='utf-8') as f:
        w=csv.writer(f); w.writerow(['path','bytes','sha256'])
        for p in sorted(OUT.rglob('*')):
            if p.is_file(): w.writerow([str(p.relative_to(OUT)), p.stat().st_size, sha256_path(p)])
    print('done profiles', len(profile_rows), 'output', OUT, file=sys.stderr)

if __name__=='__main__':
    main()
