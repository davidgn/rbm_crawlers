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
HEADERS={"User-Agent":"GSBPDb-bookstore-registry-research/0.1 (+contact researcher)"}
KOSHO="https://www.kosho.or.jp"
EHON="https://www.e-hon.ne.jp"

def get(url, params=None):
    r=requests.get(url,params=params,headers=HEADERS,timeout=30); r.raise_for_status(); return r

def sha(b): return hashlib.sha256(b).hexdigest()

def parse_kosho_profile(url, html):
    soup=BeautifulSoup(html,'html.parser')
    text=soup.get_text('\n',strip=True)
    h=soup.find(['h1','h2','h3'])
    name=h.get_text(' ',strip=True) if h else ''
    mloc=re.search(r'所在地[:：]\s*([^\n]+)', text)
    massoc=re.search(r'所属組合[:：]\s*([^\n]+)', text)
    mtel=re.search(r'TEL[:：]?\s*([0-9\-]+)', text)
    no_store=bool(re.search(r'店舗運営を行っておりません|無店舗|事務所営業|倉庫', text))
    role='office_only_dealer' if no_store else 'used_antiquarian_dealer'
    return {'country':'Japan','source_layer':'Kosho','source_name':'日本の古本屋 / Kosho','entity_name':name,'entity_role_primary':role,'registered_location':mloc.group(1).strip() if mloc else '', 'association_affiliation':massoc.group(1).strip() if massoc else '', 'phone':mtel.group(1) if mtel else '', 'storefront_status_note':'possible no-storefront/office/warehouse' if no_store else '', 'source_url':url}

def discover_kosho_profile_urls(pref_code=None):
    # Parameter names may need adjustment after rendered/browser inspection.
    r=get(KOSHO+'/abouts/list.php')
    urls=sorted(set(re.findall(r'/abouts/\?id=[0-9]+(?:&mode=default)?', r.text)))
    return [KOSHO+u for u in urls], r.content

def main():
    ap=argparse.ArgumentParser(); ap.add_argument('--outdir',default='japan_ehon_kosho_harvest'); ap.add_argument('--limit',type=int,default=0); ap.add_argument('--sleep',type=float,default=0.5); args=ap.parse_args()
    out=Path(args.outdir); out.mkdir(parents=True,exist_ok=True)
    urls, listing=discover_kosho_profile_urls(); (out/'kosho_list_initial.html').write_bytes(listing)
    if args.limit: urls=urls[:args.limit]
    rows=[]; manifest=[]
    for url in urls:
        try:
            r=get(url); sid=url.split('id=')[-1].split('&')[0]; (out/f'kosho_{sid}.html').write_bytes(r.content)
            rows.append(parse_kosho_profile(url,r.text)); manifest.append({'url':url,'bytes':len(r.content),'sha256':sha(r.content),'status':'ok'})
        except Exception as e:
            manifest.append({'url':url,'bytes':0,'sha256':'','status':f'error:{e}'})
        time.sleep(args.sleep)
    fields=['country','source_layer','source_name','entity_name','entity_role_primary','registered_location','association_affiliation','phone','storefront_status_note','source_url']
    with open(out/'japan_kosho_normalized.csv','w',newline='',encoding='utf-8') as f:
        w=csv.DictWriter(f,fieldnames=fields); w.writeheader(); w.writerows(rows)
    with open(out/'japan_kosho_raw_manifest.csv','w',newline='',encoding='utf-8') as f:
        w=csv.DictWriter(f,fieldnames=['url','bytes','sha256','status']); w.writeheader(); w.writerows(manifest)
    # e-hon requires endpoint parameter discovery. Preserve seed URLs for browser/manual probe.
    (out/'japan_ehon_probe_seeds.json').write_text(json.dumps({'search_url':EHON+'/bec/SF/Search','receive_guide':'https://www1.e-hon.ne.jp/content/guide/receive.html'},indent=2,ensure_ascii=False),encoding='utf-8')
    print(json.dumps({'kosho_profile_urls_initial':len(urls),'parsed_rows':len(rows),'ehon_status':'seed_only_parameter_probe_needed'},indent=2,ensure_ascii=False))
if __name__=='__main__': main()
