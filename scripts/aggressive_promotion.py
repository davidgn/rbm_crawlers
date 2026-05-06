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

REQUIRED_KEYS = ["base_url", "book_url_regex", "discovery_mode"]

for p in backlog:
    is_complete = True
    for k in REQUIRED_KEYS:
        if not p.get(k):
            is_complete = False
            break
    
    if is_complete:
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

print(f"Aggressive Promotion Complete.")
print(f"Promoted: {len(repaired)}")
print(f"Remaining Backlog: {len(remaining_backlog)}")
print(f"Total Active: {len(profiles)}")
