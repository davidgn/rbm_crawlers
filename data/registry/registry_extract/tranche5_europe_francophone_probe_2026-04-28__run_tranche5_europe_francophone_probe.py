#!/usr/bin/env python3
"""Tranche 5 Europe/Francophone bookstore-source public probe runner.
Network-enabled runtime required. Saves raw files and a hash manifest; does not promote rows automatically.
"""
from __future__ import annotations
import csv, hashlib, json, time
from pathlib import Path
from urllib.request import Request, urlopen
OUT=Path('tranche5_europe_francophone_network_run'); RAW=OUT/'raw'
OUT.mkdir(exist_ok=True); RAW.mkdir(exist_ok=True)
HEADERS={'User-Agent':'GSBPDb-bookstore-registry-probe/0.1'}
SOURCES=[
 ('france_data_gouv_dataset','https://www.data.gouv.fr/datasets/base-des-librairies-en-france'),
 ('france_data_gouv_static_csv_candidate','https://static.data.gouv.fr/resources/base-des-librairies-en-france/20260420-100849/202603-base-librairies-acces-ouvert.csv'),
 ('belgium_boekhandels_vlaanderen','https://www.boekhandelsvlaanderen.be/boekhandels'),
 ('switzerland_buchzentrum','https://www.buchzentrum.ch/de/buchwelt-schweiz/buchhandlungen/alle_geno'),
 ('switzerland_buchbon','https://buchbon.ch/fr/bookstores'),
 ('netherlands_libris','https://libris.nl/winkels'),
 ('portugal_reli','https://www.reli.pt/pt/livrarias/'),
 ('portugal_apel','https://www.apel.pt/associados/lista/'),
 ('portugal_dglab_livrarias','https://livro.dglab.gov.pt/sites/DGLB/Portugues/Quem_Somos/editorasLivrarias/PesquisaLivrarias/Paginas/PesquisaLivrarias.aspx')]
def fetch(name,url):
    try:
        with urlopen(Request(url, headers=HEADERS), timeout=30) as r:
            data=r.read(); ctype=r.headers.get('Content-Type','')
        ext='.csv' if ('csv' in ctype.lower() or url.endswith('.csv')) else '.html'
        p=RAW/f'{name}{ext}'; p.write_bytes(data)
        return {'name':name,'url':url,'ok':True,'path':str(p),'bytes':len(data),'sha256':hashlib.sha256(data).hexdigest(),'content_type':ctype}
    except Exception as e:
        return {'name':name,'url':url,'ok':False,'error':repr(e)}
rows=[]
for name,url in SOURCES:
    rows.append(fetch(name,url)); time.sleep(1)
(OUT/'download_manifest.json').write_text(json.dumps(rows,indent=2,ensure_ascii=False),encoding='utf-8')
fields=sorted({k for r in rows for k in r})
with (OUT/'download_manifest.csv').open('w',newline='',encoding='utf-8') as f:
    w=csv.DictWriter(f,fieldnames=fields); w.writeheader(); w.writerows(rows)
print(json.dumps({'out':str(OUT),'files':len(rows),'ok':sum(1 for r in rows if r.get('ok'))},indent=2))
