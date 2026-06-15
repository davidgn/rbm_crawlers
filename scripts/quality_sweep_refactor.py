import json
from pathlib import Path

repo_root = Path("/home/davidgn/active_repos/unipress-parser-crawler-family")
monolith_path = repo_root / "config/press_multisite_profiles_2026-03-15.json"
backlog_path = repo_root / "config/backlog_profiles.json"

with open(monolith_path, 'r') as f:
    data = json.load(f)

profiles = data.get('profiles', [])
active_profiles = []
backlog_profiles = []

seen_slugs = set()
seen_qids = set()

# Generic/Collided QIDs to clear
GENERIC_QIDS = {"Q6156828"}

for p in profiles:
    slug = p.get('slug')
    qid = p.get('wikidata_qid')
    
    # 1. Clear generic QIDs
    if qid in GENERIC_QIDS:
        p['wikidata_qid'] = ""
        qid = ""

    # 2. Fix T&F / high-priority noise
    if slug == 'taylor_francis' and not p.get('base_url'):
        p['base_url'] = "https://www.taylorfrancis.com"
        p['discovery_mode'] = "sitemaps"
        p['sitemap_guesses'] = ["https://www.taylorfrancis.com/sitemap/sitemap_index.xml"]
        p['book_url_regex'] = "/books/mono/|/books/edit/"

    # 3. Triage Spider
    if p.get('discovery_mode') == 'spider' and not p.get('base_url'):
        backlog_profiles.append(p)
        continue

    # 4. Deduplicate (keep first)
    if slug and slug in seen_slugs:
        continue
    if qid and qid in seen_qids:
        continue
        
    if slug: seen_slugs.add(slug)
    if qid: seen_qids.add(qid)
    
    active_profiles.append(p)

# Save active monolith
with open(monolith_path, 'w') as f:
    json.dump({"profiles": active_profiles}, f, indent=2, ensure_ascii=False)

# Save backlog
with open(backlog_path, 'w') as f:
    json.dump({"backlog": backlog_profiles}, f, indent=2, ensure_ascii=False)

print("Quality Sweep Complete.")
print(f"Active Profiles: {len(active_profiles)}")
print(f"Backlog Profiles: {len(backlog_profiles)}")
