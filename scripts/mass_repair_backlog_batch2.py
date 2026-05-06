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

# Mass Repair Batch 2 (Manual Research)
REPAIRS = {
    "ArabCenterforResearchandPolicyStudiesACRPS": {
        "base_url": "https://www.dohainstitute.org/en/Books/Pages/",
        "discovery_mode": "spider",
        "book_url_regex": "/en/Books/Pages/[\\w-]+\\.aspx"
    },
    "MuseumsVictoria": {
        "base_url": "https://museumsvictoria.com.au/publishing/",
        "discovery_mode": "spider",
        "book_url_regex": "/publishing/[\\w-]+/?$"
    },
    "BRACResearchandEvaluationDivisionRED": {
        "base_url": "https://bigd.bracu.ac.bd/publications/",
        "discovery_mode": "spider",
        "book_url_regex": "/publications/[\\w-]+/?$"
    },
    "NationalHealthandMedicalResearchCouncilNHMRCAustralia": {
        "base_url": "https://www.nhmrc.gov.au/about-us/publications",
        "discovery_mode": "spider",
        "book_url_regex": "/about-us/publications/[\\w-]+"
    },
    "CentreforAboriginalEconomicPolicyResearchCAEPR": {
        "base_url": "https://caepr.anu.edu.au/publications",
        "discovery_mode": "spider",
        "book_url_regex": "/publications/[\\w-]+"
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

print(f"Mass Repair Batch 2 Complete.")
print(f"Repaired: {len(repaired)}")
print(f"Remaining Backlog: {len(remaining_backlog)}")
print(f"Total Active: {len(profiles)}")
