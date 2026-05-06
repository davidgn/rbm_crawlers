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

# Repair Logic Map
REPAIRS = {
    "HSRCPress": {
        "base_url": "https://www.hsrcpress.ac.za",
        "discovery_mode": "sitemaps",
        "sitemap_guesses": ["https://www.hsrcpress.ac.za/sitemap.xml"],
        "book_url_regex": "/product/[^/]+/?$"
    },
    "AmericanUniversityinCairoPress": {
        "base_url": "https://aucpress.com",
        "discovery_mode": "sitemaps",
        "sitemap_guesses": ["https://aucpress.com/sitemap_index.xml"],
        "book_url_regex": "/product/[^/]+/?$"
    },
    "ChinaSocialSciencesPressCSSP": {
        "base_url": "http://www.csspw.com.cn",
        "discovery_mode": "spider",
        "book_url_regex": "/p/\\d+\\.html"
    },
    "WorldBankPublications": {
        "base_url": "https://openknowledge.worldbank.org",
        "discovery_mode": "sitemaps",
        "sitemap_guesses": ["https://openknowledge.worldbank.org/sitemap_index.xml"],
        "book_url_regex": "/entities/publication/[\\w-]+|/handle/\\d+/\\d+"
    }
}

# New Global Giants (not in backlog or monolith)
NEW_GIANTS = [
    {
        "site_name": "WHO-Publications",
        "slug": "who_publications",
        "base_url": "https://iris.who.int",
        "discovery_mode": "spider",
        "book_url_regex": "/handle/10665/\\d+",
        "title_suffix_regexes": [" | WHO IRIS"],
        "awards_heading_names": ["Awards", "Prizes"],
        "wikidata_qid": "Q7817",
        "page_identity_family": "book_detail_page",
        "evidence_normalizer_family": "generic",
        "site_policy": {
            "default_delay_seconds": 1.0,
            "default_max_pages": 100,
            "honor_robots": True,
            "preferred_release_lane": "quarantine"
        }
    }
]

for p in backlog:
    name = p['site_name']
    if name in REPAIRS:
        repair = REPAIRS[name]
        p.update(repair)
        repaired.append(p)
    else:
        remaining_backlog.append(p)

# Merge back
profiles.extend(repaired)
profiles.extend(NEW_GIANTS)

# Save
with open(monolith_path, 'w') as f:
    json.dump({"profiles": profiles}, f, indent=2, ensure_ascii=False)

with open(backlog_path, 'w') as f:
    json.dump({"backlog": remaining_backlog}, f, indent=2, ensure_ascii=False)

print(f"Backlog Repair Complete.")
print(f"Repaired: {len(repaired)}")
print(f"New Giants Added: {len(NEW_GIANTS)}")
print(f"Remaining Backlog: {len(remaining_backlog)}")
print(f"Total Active: {len(profiles)}")
