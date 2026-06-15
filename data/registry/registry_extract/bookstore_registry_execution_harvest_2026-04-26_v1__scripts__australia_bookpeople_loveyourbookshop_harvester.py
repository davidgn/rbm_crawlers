#!/usr/bin/env python3
import argparse
import csv
import hashlib
import json
import re
import time
from pathlib import Path
import requests
from bs4 import BeautifulSoup

BASE = "https://loveyourbookshop.org.au"
HEADERS = {"User-Agent": "GSBPDb-bookstore-registry-research/0.1 (+contact researcher)"}

def sha256_bytes(b):
    return hashlib.sha256(b).hexdigest()

def get(url):
    r = requests.get(url, headers=HEADERS, timeout=30)
    r.raise_for_status()
    return r

def parse_profile(url, html):
    soup = BeautifulSoup(html, "html.parser")
    text = soup.get_text("\n", strip=True)
    title = soup.find(["h1","h2"])
    name = title.get_text(" ", strip=True) if title else ""
    online_only = bool(re.search(r"\bOnline only\b", text, re.I))
    email = ""
    phone = ""
    website = ""
    address = ""
    lines = [ln.strip() for ln in text.splitlines() if ln.strip()]
    for i, line in enumerate(lines):
        if line.startswith("Email:"):
            email = line.replace("Email:", "", 1).strip()
        elif line.startswith("Phone:"):
            phone = line.replace("Phone:", "", 1).strip()
        elif line.startswith("Website:"):
            website = line.replace("Website:", "", 1).strip()
        elif line == "ADDRESS" and i + 1 < len(lines):
            address = lines[i+1].strip()
    desc = ""
    if name and "Stockists of" in text:
        desc = text.split(name,1)[-1].split("Stockists of",1)[0].strip()
    elif name and "Visit their website" in text:
        desc = text.split(name,1)[-1].split("Visit their website",1)[0].strip()
    flags=[]
    if online_only: flags.append("online_only")
    if re.search(r"secondhand|antiquarian|used", text, re.I): flags.append("used_antiquarian")
    if "Accepts ABA Book Gift Cards in store and online" in text: flags.append("accepts_aba_gift_cards_in_store_and_online")
    elif "Accepts ABA Book Gift Cards in store" in text: flags.append("accepts_aba_gift_cards_in_store")
    if "Sells ABA Book Gift Cards" in text: flags.append("sells_aba_gift_cards")
    if "Accepts Australian Book Vouchers" in text: flags.append("accepts_australian_book_vouchers")
    role = "online_only_bookstore" if online_only else "bookstore_location"
    if "used_antiquarian" in flags and online_only:
        role = "online_only_bookstore"
    return {
        "country":"Australia", "source_name":"BookPeople / Love Your Bookshop", "entity_name":name,
        "entity_role_primary":role, "role_flags":"; ".join(flags), "street_address_full":address,
        "email":email, "phone":phone, "website":website, "description_raw":desc,
        "source_url":url
    }

def discover_from_sitemap():
    urls=[]
    for sm in [f"{BASE}/wp-sitemap-posts-store-1.xml", f"{BASE}/sitemap.xml", f"{BASE}/wp-sitemap.xml"]:
        try:
            r=get(sm)
        except Exception:
            continue
        urls += re.findall(r"https://loveyourbookshop\.org\.au/store/[^<\s]+/", r.text)
    return sorted(set(urls))

def main():
    ap=argparse.ArgumentParser()
    ap.add_argument("--outdir", default="australia_bookpeople_loveyourbookshop_harvest")
    ap.add_argument("--sleep", type=float, default=0.5)
    ap.add_argument("--limit", type=int, default=0)
    args=ap.parse_args()
    out=Path(args.outdir); out.mkdir(parents=True, exist_ok=True)
    urls=discover_from_sitemap()
    if args.limit: urls=urls[:args.limit]
    rows=[]; manifest=[]
    for url in urls:
        try:
            r=get(url)
            raw=(out/(url.rstrip('/').split('/')[-1]+'.html'))
            raw.write_bytes(r.content)
            rows.append(parse_profile(url, r.text))
            manifest.append({"url":url,"bytes":len(r.content),"sha256":sha256_bytes(r.content),"status":"ok"})
        except Exception as e:
            manifest.append({"url":url,"bytes":0,"sha256":"","status":f"error:{e}"})
        time.sleep(args.sleep)
    fields=["country","source_name","entity_name","entity_role_primary","role_flags","street_address_full","email","phone","website","description_raw","source_url"]
    with open(out/"australia_bookpeople_loveyourbookshop_normalized.csv","w",newline='',encoding='utf-8') as f:
        w=csv.DictWriter(f, fieldnames=fields); w.writeheader(); w.writerows(rows)
    with open(out/"australia_bookpeople_loveyourbookshop_raw_manifest.csv","w",newline='',encoding='utf-8') as f:
        w=csv.DictWriter(f, fieldnames=["url","bytes","sha256","status"]); w.writeheader(); w.writerows(manifest)
    print(json.dumps({"discovered_urls":len(urls),"parsed_rows":len(rows)}, indent=2))
if __name__ == "__main__": main()
