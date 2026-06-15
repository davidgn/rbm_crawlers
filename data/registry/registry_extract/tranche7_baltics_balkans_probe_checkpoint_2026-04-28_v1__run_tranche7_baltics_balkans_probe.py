#!/usr/bin/env python3
import csv
import time
import hashlib
from pathlib import Path
import requests
OUT = Path('tranche7_harvest_run_output')
OUT.mkdir(exist_ok=True)
HEADERS = {'User-Agent': 'BookstoreRegistryProbe/0.1 (+research QA)'}
SEEDS = [
    ('Latvia_LGA_home','https://gramattirgotaji.wordpress.com/'),
    ('Latvia_Zvaigzne_member','https://gramattirgotaji.wordpress.com/biedr/apgads-zvaigzne-abc/'),
    ('Latvia_Jumava_member','https://gramattirgotaji.wordpress.com/biedr/jumavas-gramatnica/'),
    ('Croatia_ZNK_members','https://znk.hr/croatian-publishers/'),
    ('Hungary_MKKE_members','https://en.mkke.hu/members'),
    ('Slovakia_ZVKS_anchor','https://www.litcentrum.sk/en/institution/association-publishers-and-booksellers-slovak-republic-zvks/about'),
    ('Greece_BIBLIONET_Nestor_sample','https://www.biblionet.gr/βιβλιοπωλειο-νεστωρ-p9201'),
    ('Romania_CEE_private_seed','https://www.jaceklewinson.com/booksellers/country/Romania'),
]
def fetch(label,url):
    r=requests.get(url,headers=HEADERS,timeout=30)
    raw=r.content
    (OUT/f'{label}.html').write_bytes(raw)
    return {'label':label,'url':url,'status':r.status_code,'bytes':len(raw),'sha256':hashlib.sha256(raw).hexdigest(),'content_type':r.headers.get('content-type','')}
rows=[]
for label,url in SEEDS:
    try:
        rows.append(fetch(label,url))
        time.sleep(1.0)
    except Exception as e:
        rows.append({'label':label,'url':url,'status':'ERROR','bytes':0,'sha256':'','content_type':'','error':repr(e)})
with open(OUT/'tranche7_fetch_manifest.csv','w',newline='',encoding='utf-8') as f:
    fields=sorted(set().union(*[r.keys() for r in rows]))
    w=csv.DictWriter(f,fieldnames=fields); w.writeheader(); w.writerows(rows)
print('Wrote', OUT/'tranche7_fetch_manifest.csv')
