import csv
import json
import re
from pathlib import Path

profiles_path = "/home/davidgn/active_repos/unipress-parser-crawler-family/config/press_multisite_profiles_2026-03-15.json"
backlog_path = "/home/davidgn/active_repos/unipress-parser-crawler-family/config/backlog_profiles.json"
seeds_path = "/home/davidgn/active_repos/linked-data-crawls/artifacts/home_residue_2026-04-22/tabular/award_crawling_seeds.csv"

# Load current profiles
with open(profiles_path, 'r') as f:
    profiles_data = json.load(f)

# Load backlog
backlog_data = {"backlog": []}
if Path(backlog_path).exists():
    with open(backlog_path, 'r') as f:
        backlog_data = json.load(f)

def normalize(s):
    if not s: return ""
    return re.sub(r'[^a-z0-9]', '', s.lower())

wired_slugs = {normalize(p.get('slug')) for p in profiles_data['profiles'] if p.get('slug')}
wired_names = {normalize(p.get('site_name')) for p in profiles_data['profiles'] if p.get('site_name')}

backlog_slugs = {normalize(p.get('slug')) for p in backlog_data.get('backlog', []) if p.get('slug')}
backlog_names = {normalize(p.get('site_name')) for p in backlog_data.get('backlog', []) if p.get('site_name')}

excluded_slugs = wired_slugs | backlog_slugs
excluded_names = wired_names | backlog_names

missing_presses = []

with open(seeds_path, 'r') as f:
    reader = csv.DictReader(f)
    for row in reader:
        slug = normalize(row['slug'])
        name = normalize(row['name'])
        
        if slug not in excluded_slugs and name not in excluded_names:
            try:
                priority = float(row.get('priority_score', 0) or 0)
            except ValueError:
                priority = 0
            missing_presses.append({
                'name': row['name'],
                'slug': row['slug'],
                'priority': priority,
                'wikidata_qid': row.get('wikidata_qid', '')
            })

# Sort by priority descending
missing_presses.sort(key=lambda x: x['priority'], reverse=True)

print(f"{'Priority':<10} | {'Name':<40} | {'Wikidata QID'}")
print("-" * 75)
for p in missing_presses[:30]:
    print(f"{p['priority']:<10.2f} | {p['name'][:38]:<40} | {p['wikidata_qid']}")

