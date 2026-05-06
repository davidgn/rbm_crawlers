import json

backlog_path = "/media/davidgn/data8/active_repos/unipress-parser-crawler-family/config/backlog_profiles.json"

with open(backlog_path, 'r') as f:
    data = json.load(f)

backlog = data.get('backlog', [])

fixable = []
for p in backlog:
    if p.get('base_url') and not p.get('book_url_regex'):
        fixable.append({
            'site_name': p['site_name'],
            'base_url': p['base_url'],
            'slug': p['slug']
        })

print(f"Found {len(fixable)} fixable backlog profiles.")
for f in fixable:
    print(f"{f['site_name']} | {f['base_url']} | {f['slug']}")
