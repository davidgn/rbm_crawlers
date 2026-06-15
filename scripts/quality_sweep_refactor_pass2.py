import json
from pathlib import Path

repo_root = Path("/home/davidgn/active_repos/unipress-parser-crawler-family")
monolith_path = repo_root / "config/press_multisite_profiles_2026-03-15.json"
backlog_path = repo_root / "config/backlog_profiles.json"

with open(monolith_path, 'r') as f:
    data = json.load(f)
with open(backlog_path, 'r') as f:
    backlog_data = json.load(f)

profiles = data.get('profiles', [])
active_profiles = []
backlog_profiles = backlog_data.get('backlog', [])

REQUIRED_KEYS = ["base_url", "book_url_regex", "discovery_mode"]

for p in profiles:
    missing = [k for k in REQUIRED_KEYS if not p.get(k)]
    if missing:
        backlog_profiles.append(p)
    else:
        active_profiles.append(p)

# Save active monolith
with open(monolith_path, 'w') as f:
    json.dump({"profiles": active_profiles}, f, indent=2, ensure_ascii=False)

# Save backlog
with open(backlog_path, 'w') as f:
    json.dump({"backlog": backlog_profiles}, f, indent=2, ensure_ascii=False)

print("Second Quality Sweep Pass Complete.")
print(f"Active Profiles: {len(active_profiles)}")
print(f"Backlog Profiles: {len(backlog_profiles)}")
