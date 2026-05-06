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

# Mass Repair Batch 3
REPAIRS = {
    "AirUniversityPress": {
        "base_url": "https://www.airuniversity.af.edu/AUPress/",
        "discovery_mode": "spider",
        "book_url_regex": "/AUPress/Display/Article/\\d+/[^/]+/?$"
    },
    "InstituteforSecurityStudiesISSAfrica": {
        "base_url": "https://issafrica.org/research/",
        "discovery_mode": "spider",
        "book_url_regex": "/research/(monographs|books-and-other-publications)/[^/]+/?$"
    },
    "SouthAfricanInstituteofInternationalAffairsSAIIA": {
        "base_url": "https://saiia.org.za/research/",
        "discovery_mode": "spider",
        "book_url_regex": "/research/[^/]+/?$"
    },
    "IITA:InternationalInstituteofTropicalAgriculture": {
        "base_url": "https://cgspace.cgiar.org/handle/10568/",
        "discovery_mode": "spider",
        "book_url_regex": "/handle/10568/\\d+"
    },
    "HSRCPress": {
        "base_url": "https://www.hsrcpress.ac.za",
        "discovery_mode": "sitemaps",
        "sitemap_guesses": ["https://www.hsrcpress.ac.za/sitemap.xml"],
        "book_url_regex": "/product/[^/]+/?$"
    },
    "WorldBankPublications": {
        "base_url": "https://openknowledge.worldbank.org",
        "discovery_mode": "sitemaps",
        "sitemap_guesses": ["https://openknowledge.worldbank.org/sitemap_index.xml"],
        "book_url_regex": "/entities/publication/[\\w-]+|/handle/\\d+/\\d+"
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

print(f"Mass Repair Batch 3 Complete.")
print(f"Repaired: {len(repaired)}")
print(f"Remaining Backlog: {len(remaining_backlog)}")
print(f"Total Active: {len(profiles)}")
