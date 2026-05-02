import json
import csv
import re
from pathlib import Path

profiles_path = "/home/davidgn/active_repos/unipress-parser-crawler-family/config/press_multisite_profiles_2026-03-15.json"
seeds_path = "/home/davidgn/active_repos/linked-data-crawls/artifacts/home_residue_2026-04-22/tabular/award_crawling_seeds.csv"

# Load current active profiles
with open(profiles_path, 'r') as f:
    profiles_data = json.load(f)

# Load seeds to get priority scores
priority_map = {}
with open(seeds_path, 'r') as f:
    reader = csv.DictReader(f)
    for row in reader:
        # Map by normalized slug
        norm_slug = re.sub(r'[^a-z0-9]', '', row['slug'].lower())
        priority_map[norm_slug] = float(row.get('priority_score', 0) or 0)

active_slugs_with_scores = []
for p in profiles_data['profiles']:
    slug = p.get('slug', '')
    norm_slug = re.sub(r'[^a-z0-9]', '', slug.lower())
    score = priority_map.get(norm_slug, 0)
    # If not found in seeds, maybe check profile name?
    if score == 0:
        norm_name = re.sub(r'[^a-z0-9]', '', p.get('site_name', '').lower())
        score = priority_map.get(norm_name, 0)
        
    active_slugs_with_scores.append({
        'slug': slug,
        'score': score
    })

# Sort by score descending
active_slugs_with_scores.sort(key=lambda x: x['score'], reverse=True)

# Get top 100
top_100 = [x['slug'] for x in active_slugs_with_scores[:100] if x['slug']]

with open('top_100_slugs.txt', 'w') as f:
    for slug in top_100:
        f.write(f"{slug}\n")

print(f"Created top_100_slugs.txt with {len(top_100)} slugs.")
