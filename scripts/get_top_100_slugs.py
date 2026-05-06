import json
from pathlib import Path

monolith_path = Path("/media/davidgn/data8/active_repos/unipress-parser-crawler-family/config/press_multisite_profiles_2026-03-15.json")

with open(monolith_path, 'r') as f:
    data = json.load(f)
    profiles = data.get("profiles", [])

slugs = []
for p in profiles:
    slug = p.get("slug")
    if slug:
        slugs.append(slug)

with open("/home/davidgn/top_100_slugs.txt", 'w') as f:
    for s in slugs[:100]:
        f.write(s + '\n')

print(f"Generated {len(slugs[:100])} slugs from the monolith.")
