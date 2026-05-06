import json
from pathlib import Path

repo_root = Path("/media/davidgn/data8/active_repos/unipress-parser-crawler-family")
sites_dir = repo_root / "config/sites"

# 1. Apply Promotions (Batch 18 & 19)
promotion_files = ["/home/davidgn/batch18_promotions.json", "/home/davidgn/batch19_promotions.json"]

for promo_file in promotion_files:
    if not Path(promo_file).exists():
        continue
    with open(promo_file, 'r') as f:
        promotions = json.load(f)["promotions"]

    for p in promotions:
        filename = p['slug'] + ".json"
        filepath = sites_dir / filename
        # Standard template
        profile = {
            "site_name": p['site_name'],
            "slug": p['slug'],
            "base_url": p['base_url'],
            "discovery_mode": p['discovery_mode'],
            "book_url_regex": p['book_url_regex'],
            "title_suffix_regexes": p.get('title_suffix_regexes', []),
            "awards_heading_names": p.get('awards_heading_names', ["Awards", "Prizes"]),
            "evidence_normalizer_family": "generic",
            "probation_class": "provisional",
            "site_policy": {
                "default_delay_seconds": 1.0,
                "default_max_pages": 100,
                "honor_robots": True,
                "preferred_release_lane": "quarantine"
            },
            "wikidata_qid": p.get('wikidata_qid', "")
        }
        if 'sitemap_guesses' in p:
            profile['sitemap_guesses'] = p['sitemap_guesses']
        
        with open(filepath, 'w') as f:
            json.dump(profile, f, indent=2, ensure_ascii=False)

# 2. Apply Backlog Repairs (Batch 2 & 3)
repair_files = ["/home/davidgn/backlog_repair_batch2.json", "/home/davidgn/backlog_repair_batch3.json"]

# We need to find the correct filename for the backlog items.
name_to_file = {}
for site_file in sites_dir.glob("*.json"):
    with open(site_file, 'r') as f:
        try:
            d = json.load(f)
            name_to_file[d.get('site_name', '')] = site_file
        except:
            continue

for r_file in repair_files:
    if not Path(r_file).exists():
        continue
    with open(r_file, 'r') as f:
        repairs = json.load(f)["repairs"]

    for r in repairs:
        name = r['site_name']
        if name in name_to_file:
            filepath = name_to_file[name]
            with open(filepath, 'r') as f:
                profile = json.load(f)
            
            profile['base_url'] = r['base_url']
            profile['book_url_regex'] = r['book_url_regex']
            profile['discovery_mode'] = r['discovery_mode']
            
            with open(filepath, 'w') as f:
                json.dump(profile, f, indent=2, ensure_ascii=False)
        else:
            print(f"Warning: Could not find file for {name}")

print("Site configuration updates complete.")
