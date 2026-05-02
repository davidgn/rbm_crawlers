import json

backlog_path = "/home/davidgn/active_repos/unipress-parser-crawler-family/config/backlog_profiles.json"

with open(backlog_path, 'r') as f:
    data = json.load(f)

backlog = data.get('backlog', [])

summary = {
    "missing_base_url": 0,
    "missing_book_url_regex": 0,
    "has_base_url_but_no_regex": 0,
    "has_both_but_unsupported_mode": 0,
    "total": len(backlog)
}

ALLOWED_MODES = {"sitemaps", "seed_pages", "paged_index", "hybrid", "spider"}

for p in backlog:
    has_url = bool(p.get('base_url'))
    has_regex = bool(p.get('book_url_regex'))
    mode = p.get('discovery_mode')
    
    if not has_url:
        summary["missing_base_url"] += 1
    if not has_regex:
        summary["missing_book_url_regex"] += 1
    if has_url and not has_regex:
        summary["has_base_url_but_no_regex"] += 1
    if has_url and has_regex and mode not in ALLOWED_MODES:
        summary["has_both_but_unsupported_mode"] += 1

print(json.dumps(summary, indent=2))

# List top 10 that HAVE a base_url (easier to fix)
print("\nTop 10 with base_url but backlogged:")
count = 0
for p in backlog:
    if p.get('base_url'):
        print(f"- {p['site_name']} ({p['base_url']}) | Mode: {p['discovery_mode']} | Regex: {p.get('book_url_regex')}")
        count += 1
        if count >= 10:
            break
