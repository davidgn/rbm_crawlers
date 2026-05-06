import json
import os
from pathlib import Path

repo_root = Path("/media/davidgn/data8/active_repos/unipress-parser-crawler-family")
monolith_path = repo_root / "config/press_multisite_profiles_2026-03-15.json"
backlog_path = repo_root / "config/backlog_profiles.json"

with open(monolith_path, 'r') as f:
    data = json.load(f)
with open(backlog_path, 'r') as f:
    backlog_data = json.load(f)

profiles = data.get('profiles', [])
backlog = backlog_data.get('backlog', [])
repaired = []
remaining_backlog = []

# Subagent Repair Logic
REPAIRS = {
    "UniversidadORTUruguay": {
        "base_url": "https://www.ort.edu.uy/publicaciones",
        "book_url_regex": "/publicacion/",
        "discovery_mode": "spider"
    },
    "ZoologicalSocietyofNigeria": {
        "base_url": "https://www.ajol.info/index.php/tzol",
        "book_url_regex": "/article/view/",
        "discovery_mode": "spider"
    },
    "KNUSTPress": {
        "base_url": "https://ir.knust.edu.gh/",
        "book_url_regex": "/handle/[0-9.]+/[0-9]+",
        "discovery_mode": "spider"
    },
    "UniversityofMariborPress": {
        "base_url": "https://press.um.si/",
        "book_url_regex": "/index.php/ump/catalog/book/",
        "discovery_mode": "spider"
    },
    "UniversityofNewSouthWalesPress": {
        "base_url": "https://www.unsw.press/",
        "book_url_regex": "/books/",
        "discovery_mode": "spider"
    },
    "UniversidadAutónomadeSanLuisPotosí": {
        "base_url": "https://editorial.uaslp.mx/",
        "book_url_regex": "/Publicaciones/",
        "discovery_mode": "spider"
    },
    "UniversityofBotswanaPress": {
        "base_url": "https://ubrisa.ub.bw/",
        "book_url_regex": "/handle/",
        "discovery_mode": "spider"
    },
    "AazemPublications": {
        "base_url": "http://aazem.com/",
        "book_url_regex": "/product/",
        "discovery_mode": "spider"
    },
    "FAPESP": {
        "base_url": "https://fapesp.br/publicacoes",
        "book_url_regex": "/[0-9]+",
        "discovery_mode": "spider"
    },
    "IMU": {
        "base_url": "https://www.mathunion.org/publications",
        "book_url_regex": "/publications/[a-z-]+",
        "discovery_mode": "spider"
    }
}

for p in backlog:
    name = p['site_name']
    if name in REPAIRS:
        p.update(REPAIRS[name])
        repaired.append(p)
    else:
        remaining_backlog.append(p)

# Merge back
profiles.extend(repaired)

# Save
with open(monolith_path, 'w') as f:
    json.dump({"profiles": profiles}, f, indent=2, ensure_ascii=False)

with open(backlog_path, 'w') as f:
    json.dump({"backlog": remaining_backlog}, f, indent=2, ensure_ascii=False)

print(f"Backlog Deep Dive Repair Complete.")
print(f"Repaired: {len(repaired)}")
print(f"Remaining Backlog: {len(remaining_backlog)}")
print(f"Total Active: {len(profiles)}")
