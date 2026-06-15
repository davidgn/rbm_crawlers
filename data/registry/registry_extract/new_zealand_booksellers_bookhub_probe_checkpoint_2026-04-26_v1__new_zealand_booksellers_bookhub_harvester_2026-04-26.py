#!/usr/bin/env python3
import argparse
import csv
import hashlib
import json
import re
import time
from pathlib import Path
from urllib.parse import urljoin
import requests
from bs4 import BeautifulSoup
BASE = "https://www.booksellers.co.nz"
BOOKHUB = "https://bookhub.co.nz"
HEADERS = {"User-Agent":"GSBPDb-bookstore-registry-research/0.1 (+contact researcher)"}

def get(url):
    r=requests.get(url,headers=HEADERS,timeout=30); r.raise_for_status(); return r

def sha(b): return hashlib.sha256(b).hexdigest()

def discover_profiles():
    r=get(BASE+"/find-a-bookseller")
    soup=BeautifulSoup(r.text,"html.parser")
    urls=[]
    for a in soup.find_all('a',href=True):
        href=a['href']
        if '/bookseller/' in href:
            urls.append(urljoin(BASE,href))
    return sorted(set(urls)), r.content

def parse_profile(url, html):
    soup=BeautifulSoup(html,'html.parser')
    title=soup.find(['h1','h2'])
    name=title.get_text(' ',strip=True) if title else ''
    text=soup.get_text('\n',strip=True)
    lines=[x.strip() for x in text.splitlines() if x.strip()]
    emails=re.findall(r'[\w.\-+]+@[\w.\-]+\.[A-Za-z]{2,}', text)
    phones=[ln for ln in lines if re.search(r'\b0\d[\d\s()\-]{6,}\b', ln)]
    websites=[]
    for a in soup.find_all('a',href=True):
        href=a['href']
        if href.startswith('http') and 'booksellers.co.nz' not in href and 'facebook' not in href and 'instagram' not in href and 'twitter' not in href:
            websites.append(href)
    addr=''
    for ln in lines:
        if re.search(r'\b\d{1,5}\b', ln) and any(k in ln.lower() for k in ['street','road','st','ave','avenue','terrace','mall','drive','lane','place','christchurch','wellington','timaru','auckland']):
            addr=ln; break
    role='bookstore_location' if addr else 'review_needed'
    if re.search(r'online|marketplace|e-?tailer', text, re.I) and not addr:
        role='online_or_marketplace_retailer'
    return {'country':'New Zealand','source_name':'Booksellers Aotearoa NZ','entity_name':name,'entity_role_primary':role,'street_address_full':addr,'email':emails[0] if emails else '', 'phone':phones[0] if phones else '', 'website':websites[0] if websites else '', 'description_raw':text[:1000], 'source_url':url}

def main():
    ap=argparse.ArgumentParser(); ap.add_argument('--outdir',default='new_zealand_booksellers_bookhub_harvest'); ap.add_argument('--sleep',type=float,default=0.5); ap.add_argument('--limit',type=int,default=0); args=ap.parse_args()
    out=Path(args.outdir); out.mkdir(parents=True,exist_ok=True)
    urls,dir_bytes=discover_profiles()
    (out/'find_a_bookseller.html').write_bytes(dir_bytes)
    if args.limit: urls=urls[:args.limit]
    rows=[]; raw=[]
    for url in urls:
        try:
            r=get(url); slug=url.rstrip('/').split('/')[-1]; (out/f'{slug}.html').write_bytes(r.content)
            rows.append(parse_profile(url,r.text)); raw.append({'url':url,'bytes':len(r.content),'sha256':sha(r.content),'status':'ok'})
        except Exception as e:
            raw.append({'url':url,'bytes':0,'sha256':'','status':f'error:{e}'})
        time.sleep(args.sleep)
    fields=['country','source_name','entity_name','entity_role_primary','street_address_full','email','phone','website','description_raw','source_url']
    with open(out/'new_zealand_booksellers_aotearoa_normalized.csv','w',newline='',encoding='utf-8') as f:
        w=csv.DictWriter(f,fieldnames=fields); w.writeheader(); w.writerows(rows)
    with open(out/'new_zealand_booksellers_aotearoa_raw_manifest.csv','w',newline='',encoding='utf-8') as f:
        w=csv.DictWriter(f,fieldnames=['url','bytes','sha256','status']); w.writeheader(); w.writerows(raw)
    print(json.dumps({'profile_urls':len(urls),'parsed_rows':len(rows)},indent=2))
if __name__=='__main__': main()
