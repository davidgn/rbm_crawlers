#!/usr/bin/env python3
"""
Argentina SInCA / Datos Argentina Librerías harvester.

Run in a networked Python runtime:
  python argentina_sinca_librerias_harvester_2026-04-25.py --outdir ./argentina_sinca_librerias_run

Outputs raw CSV, normalized CSV, province counts, update-year distribution, QA summary, and SHA256 manifest.
"""
import argparse
import csv
import hashlib
import json
from pathlib import Path
from datetime import datetime, timezone
from urllib.request import Request, urlopen

DOWNLOAD_URL = 'https://datos.cultura.gob.ar/dataset/37305de4-3cce-4d4b-9d9a-fec3ca61d09f/resource/ee6ec36e-e4f2-42a0-adb8-525f0cb93c87/download/libreria.csv'
RESOURCE_URL = 'https://datos.gob.ar/dataset/cultura-mapa-cultural-espacios-culturales/archivo/cultura_ee6ec36e-e4f2-42a0-adb8-525f0cb93c87'
RESOURCE_ID = 'ee6ec36e-e4f2-42a0-adb8-525f0cb93c87'
DATASET_ID = '37305de4-3cce-4d4b-9d9a-fec3ca61d09f'

NORMALIZED_HEADERS = [
    'source_dataset','source_resource_id','source_record_key','country','source_category','entity_name','source_entity_name',
    'admin1','admin2','locality','address_line1','address_floor_or_unit','postal_code','phone_area','phone','email','website_or_social',
    'latitude','longitude','coordinate_type','source_provenance','management_type','source_update_year',
    'entity_role_primary','bookstore_flag','used_antiquarian_flag','chain_branch_flag','registry_source_class','record_status_note','source_url'
]

def sha256_path(path: Path) -> str:
    h = hashlib.sha256()
    with path.open('rb') as f:
        for chunk in iter(lambda: f.read(1024 * 1024), b''):
            h.update(chunk)
    return h.hexdigest()

def fetch(url: str) -> bytes:
    req = Request(url, headers={'User-Agent':'Mozilla/5.0 bookstore-registry-research/1.0'})
    with urlopen(req, timeout=120) as r:
        return r.read()

def clean(v):
    if v is None: return ''
    return str(v).strip()

def parse_num(v):
    v = clean(v)
    if not v: return ''
    v = v.replace(',', '.')
    try:
        return str(float(v))
    except Exception:
        return ''

def is_chain(name):
    n = name.casefold()
    chain_terms = ['yenny','el ateneo','cúspide','cuspide','tematika','gandhi','fondo de cultura económica','fce']
    return any(t in n for t in chain_terms)

def used_hint(name, source=''):
    n = (name + ' ' + source).casefold()
    hints = ['usado','usados','antiguo','antigua','antiquaria','anticuaria','viejo','viejos']
    return any(h in n for h in hints)

def normalize_row(row, idx):
    name = clean(row.get('nombre'))
    fuente = clean(row.get('fuente'))
    return {
        'source_dataset':'SInCA / Datos Argentina Mapa Cultural: Espacios Culturales — Librerías',
        'source_resource_id':RESOURCE_ID,
        'source_record_key':f'{RESOURCE_ID}:{idx}',
        'country':'Argentina',
        'source_category':clean(row.get('categoria')),
        'entity_name':name,
        'source_entity_name':name,
        'admin1':clean(row.get('provincia_nombre')),
        'admin2':clean(row.get('departamento_nombre')),
        'locality':clean(row.get('localidad_nombre')),
        'address_line1':clean(row.get('domicilio')),
        'address_floor_or_unit':clean(row.get('piso')),
        'postal_code':clean(row.get('codigo_postal')),
        'phone_area':clean(row.get('codigo_area')),
        'phone':clean(row.get('telefono')),
        'email':clean(row.get('mail')),
        'website_or_social':clean(row.get('web')),
        'latitude':parse_num(row.get('Latitud')),
        'longitude':parse_num(row.get('Longitud')),
        'coordinate_type':clean(row.get('tipo_latitud_longitud')),
        'source_provenance':fuente,
        'management_type':clean(row.get('tipo_gestion')),
        'source_update_year':clean(row.get('actualizacion')),
        'entity_role_primary':'bookstore',
        'bookstore_flag':'true',
        'used_antiquarian_flag':'true' if used_hint(name, fuente) else 'unknown',
        'chain_branch_flag':'true' if is_chain(name) else 'unknown',
        'registry_source_class':'registry-grade_official_open_data_stale_sensitive',
        'record_status_note':'included_in_stale_sensitive_official_csv_not_spot_checked_current',
        'source_url':RESOURCE_URL,
    }

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--outdir', default='argentina_sinca_librerias_run')
    args = ap.parse_args()
    out = Path(args.outdir); out.mkdir(parents=True, exist_ok=True)
    stamp = datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ')
    raw_path = out / f'argentina_sinca_librerias_raw_{stamp}.csv'
    data = fetch(DOWNLOAD_URL)
    raw_path.write_bytes(data)

    # Try UTF-8 first, then Latin-1 fallback.
    try:
        text = data.decode('utf-8-sig')
        encoding = 'utf-8-sig'
    except UnicodeDecodeError:
        text = data.decode('latin-1')
        encoding = 'latin-1'
    sample = text[:4096]
    dialect = csv.Sniffer().sniff(sample, delimiters=',;\t')
    rows = list(csv.DictReader(text.splitlines(), dialect=dialect))

    norm_path = out / f'argentina_sinca_librerias_normalized_{stamp}.csv'
    with norm_path.open('w', newline='', encoding='utf-8') as f:
        w = csv.DictWriter(f, fieldnames=NORMALIZED_HEADERS)
        w.writeheader()
        for i, row in enumerate(rows, start=1):
            w.writerow(normalize_row(row, i))

    prov_counts = {}
    year_counts = {}
    coords_present = 0
    email_present = 0
    web_present = 0
    for row in rows:
        prov_counts[clean(row.get('provincia_nombre')) or '(blank)'] = prov_counts.get(clean(row.get('provincia_nombre')) or '(blank)', 0) + 1
        year_counts[clean(row.get('actualizacion')) or '(blank)'] = year_counts.get(clean(row.get('actualizacion')) or '(blank)', 0) + 1
        if parse_num(row.get('Latitud')) and parse_num(row.get('Longitud')):
            coords_present += 1
        if clean(row.get('mail')):
            email_present += 1
        if clean(row.get('web')):
            web_present += 1

    prov_path = out / f'argentina_sinca_librerias_province_counts_{stamp}.csv'
    with prov_path.open('w', newline='', encoding='utf-8') as f:
        w = csv.writer(f); w.writerow(['provincia_nombre','row_count'])
        for k,v in sorted(prov_counts.items()): w.writerow([k,v])

    year_path = out / f'argentina_sinca_librerias_update_year_counts_{stamp}.csv'
    with year_path.open('w', newline='', encoding='utf-8') as f:
        w = csv.writer(f); w.writerow(['actualizacion','row_count'])
        for k,v in sorted(year_counts.items()): w.writerow([k,v])

    qa = {
        'fetched_at_utc': stamp,
        'download_url': DOWNLOAD_URL,
        'encoding': encoding,
        'delimiter': dialect.delimiter,
        'row_count': len(rows),
        'source_columns': list(rows[0].keys()) if rows else [],
        'province_count_distinct': len(prov_counts),
        'update_year_count_distinct': len(year_counts),
        'coords_present_rows': coords_present,
        'email_present_rows': email_present,
        'web_or_social_present_rows': web_present,
        'raw_sha256': sha256_path(raw_path),
        'normalized_sha256': sha256_path(norm_path),
    }
    qa_path = out / f'argentina_sinca_librerias_qa_summary_{stamp}.json'
    qa_path.write_text(json.dumps(qa, ensure_ascii=False, indent=2), encoding='utf-8')

    manifest_path = out / f'argentina_sinca_librerias_artifact_manifest_{stamp}.csv'
    paths = [raw_path, norm_path, prov_path, year_path, qa_path]
    with manifest_path.open('w', newline='', encoding='utf-8') as f:
        w = csv.writer(f); w.writerow(['filename','bytes','sha256'])
        for p in paths:
            w.writerow([p.name, p.stat().st_size, sha256_path(p)])
    print(json.dumps(qa, ensure_ascii=False, indent=2))

if __name__ == '__main__':
    main()
