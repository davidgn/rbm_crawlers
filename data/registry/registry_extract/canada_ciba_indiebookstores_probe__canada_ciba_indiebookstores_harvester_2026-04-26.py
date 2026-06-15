#!/usr/bin/env python3
import csv
import hashlib
import json
import re
import time
from pathlib import Path
from urllib.parse import urljoin
import requests
from bs4 import BeautifulSoup

OUT = Path("canada_ciba_indiebookstores_harvest_out")
OUT.mkdir(exist_ok=True)
HEADERS = {"User-Agent":"GSBPDb-bookstore-registry-probe/1.0 (+research; polite)"}
URLS = {
    "ciba_member_directory":"https://cibabooks.ca/member-directory",
    "ciba_eligibility":"https://cibabooks.ca/Canadian-Independent-Booksellers",
    "indie_about":"https://www.indiebookstores.ca/about/",
    "indie_bookstores":"https://www.indiebookstores.ca/bookstores/",
    "ciba_static_roster":"https://www.indiebookstores.ca/ciba-members/",
}

def fetch(url, name):
    r = requests.get(url, headers=HEADERS, timeout=30)
    r.raise_for_status()
    p = OUT / f"{name}.html"
    p.write_bytes(r.content)
    return p, r.text

def sha256_path(path):
    h = hashlib.sha256()
    with open(path,"rb") as f:
        for chunk in iter(lambda:f.read(65536), b""):
            h.update(chunk)
    return h.hexdigest()

def clean(s):
    return re.sub(r"\s+", " ", s or "").strip()

def parse_static_roster(html):
    soup = BeautifulSoup(html, "html.parser")
    lines = [clean(x) for x in soup.get_text("\n").splitlines() if clean(x)]
    provinces = {"Alberta","British Columbia","Manitoba","New Brunswick","Newfoundland","Nova Scotia",
                 "Northwest Territories","Ontario","Prince Edward Island","Quebec","Saskatchewan"}
    current = None
    rows = []
    skip_prefix = ("Home","About","Discover","Canadian Indie","Search","Find a book","More info","©",
                   "The following list","The winner","If the bookseller","Your Location","OR")
    for line in lines:
        if line == "Newfoundland":
            current = "Newfoundland and Labrador"
            continue
        if line in provinces:
            current = line
            continue
        if not current or line.startswith(skip_prefix):
            continue
        m = re.match(r"^(.*?)\s*\((.*?)\)$", line)
        if m:
            name, city_note = m.group(1), m.group(2)
        else:
            name, city_note = line, ""
        rows.append({"province_or_territory":current,"entity_name":name,"city_or_note":city_note,
                     "source_url":URLS["ciba_static_roster"]})
    return rows

def parse_bookstores_listing(html):
    soup = BeautifulSoup(html, "html.parser")
    rows = []
    for h in soup.find_all("h3"):
        a = h.find("a")
        if not a:
            continue
        name = clean(a.get_text(" "))
        href = urljoin(URLS["indie_bookstores"], a.get("href"))
        context = []
        for sib in h.find_next_siblings():
            if sib.name == "h3":
                break
            t = clean(sib.get_text(" "))
            if t:
                context.append(t)
            if len(" | ".join(context)) > 350:
                break
        rows.append({"entity_name":name,"profile_url":href,"listing_context":" | ".join(context)})
    return rows

manifest=[]
html_by_name={}
for name,url in URLS.items():
    p, html = fetch(url, name)
    html_by_name[name]=html
    manifest.append({"name":name,"url":url,"path":str(p),"bytes":p.stat().st_size,"sha256":sha256_path(p)})
    time.sleep(1)

roster_rows = parse_static_roster(html_by_name["ciba_static_roster"])
with open(OUT/"ciba_static_roster_parsed.csv","w",newline="",encoding="utf-8") as f:
    w=csv.DictWriter(f,fieldnames=["province_or_territory","entity_name","city_or_note","source_url"])
    w.writeheader(); w.writerows(roster_rows)

listing_rows = parse_bookstores_listing(html_by_name["indie_bookstores"])
with open(OUT/"indie_bookstores_listing_probe.csv","w",newline="",encoding="utf-8") as f:
    w=csv.DictWriter(f,fieldnames=["entity_name","profile_url","listing_context"])
    w.writeheader(); w.writerows(listing_rows)

with open(OUT/"harvest_manifest.json","w",encoding="utf-8") as f:
    json.dump({"manifest":manifest,"static_roster_rows":len(roster_rows),"listing_probe_rows":len(listing_rows)}, f, indent=2, ensure_ascii=False)

print(json.dumps({"static_roster_rows":len(roster_rows),"listing_probe_rows":len(listing_rows),"out":str(OUT)}, indent=2))
