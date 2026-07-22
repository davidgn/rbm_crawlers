import os
import re

spider_dir = '/opt/repos/rbm_crawlers/src'
territory_pattern = re.compile(r'territory\s*=\s*["\']([^"\']+)["\']')
platform_pattern = re.compile(r'platform_name\s*=\s*["\']([^"\']+)["\']')

bad_keywords = ['auto', 'car', 'motor', 'imovei', 'property', 'realestate', 'bienes', 'vehic', 'mubawab']
countries = ["China", "Brazil", "Nigeria", "Mexico", "Japan", "Vietnam", "DR Congo", "Iran", "Turkey", "Thailand", "Indonesia", "Pakistan", "Bangladesh", "Russia", "Ethiopia", "Philippines"]

stats = {c: [] for c in countries}
bad_spiders = []

for filename in os.listdir(spider_dir):
    if not filename.endswith('spider.py'): continue
    path = os.path.join(spider_dir, filename)
    with open(path, 'r', encoding='utf-8') as f:
        content = f.read()
        t_match = territory_pattern.search(content)
        if not t_match: continue
        territory = t_match.group(1).strip()
        
        is_bad = any(bk in filename.lower() for bk in bad_keywords)
        p_match = platform_pattern.search(content)
        if p_match:
            if any(bk in p_match.group(1).lower() for bk in bad_keywords):
                is_bad = True
                
        if is_bad:
            bad_spiders.append(filename)
            continue
            
        if territory in stats:
            stats[territory].append(filename)

print("=== BAD SPIDERS TO DELETE ===")
for b in bad_spiders:
    print(b)

print("\\n=== STATUS FOR TOP COUNTRIES ===")
for c in countries:
    count = len(stats[c])
    print(f"{c}: {count} valid spiders")
    if count < 14:
        print(f"  Missing: {14 - count}")
        # print existing to see what we have
        print(f"  Existing: {stats[c]}")

