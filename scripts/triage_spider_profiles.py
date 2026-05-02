import json
import csv

profiles_path = "/home/davidgn/active_repos/unipress-parser-crawler-family/config/press_multisite_profiles_2026-03-15.json"
seeds_path = "/home/davidgn/active_repos/linked-data-crawls/artifacts/home_residue_2026-04-22/tabular/award_crawling_seeds.csv"

# Load current profiles
with open(profiles_path, 'r') as f:
    profiles_data = json.load(f)

# Load seeds to get priority scores
priority_map = {}
with open(seeds_path, 'r') as f:
    reader = csv.DictReader(f)
    for row in reader:
        # Map by name and slug (normalized)
        priority_map[row['slug'].replace('_', '').lower()] = float(row.get('priority_score', 0) or 0)

spider_profiles = []
for p in profiles_data['profiles']:
    if p.get('discovery_mode') == 'spider':
        slug = p.get('slug', '').replace('_', '').lower()
        score = priority_map.get(slug, 0)
        spider_profiles.append({
            'site_name': p.get('site_name'),
            'slug': p.get('slug'),
            'base_url': p.get('base_url'),
            'priority': score
        })

# Sort by priority
spider_profiles.sort(key=lambda x: x['priority'], reverse=True)

with open('spider_discovery_triage.csv', 'w') as f:
    writer = csv.DictWriter(f, fieldnames=['priority', 'site_name', 'slug', 'base_url'])
    writer.writeheader()
    writer.writerows(spider_profiles)

print(f"Triage CSV created with {len(spider_profiles)} spider profiles.")
