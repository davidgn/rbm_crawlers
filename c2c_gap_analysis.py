import os
import re
from collections import defaultdict
import json

spider_dir = '/opt/repos/rbm_crawlers/src'
territory_pattern = re.compile(r'territory\s*=\s*["\']([^"\']+)["\']')

# C2C keywords to look for in the file content
c2c_keywords = ['c2c', 'marketplace', 'used', 'second-hand', 'secondhand', 'classified', 'auction', 'trade', 'buyback', 'peer-to-peer', 'p2p']

country_stats = defaultdict(lambda: {'total': 0, 'c2c': 0})

for filename in os.listdir(spider_dir):
    if filename.endswith('spider.py'):
        path = os.path.join(spider_dir, filename)
        try:
            with open(path, 'r', encoding='utf-8') as f:
                content = f.read()
                content_lower = content.lower()
                
                # Determine territory
                match = territory_pattern.search(content)
                if match:
                    country = match.group(1).strip()
                else:
                    if "_us_" in filename or filename.endswith("u_s_spider.py"):
                        country = "United States"
                    elif "_uk_" in filename or filename.endswith("u_k_spider.py"):
                        country = "United Kingdom"
                    elif "_ca_" in filename:
                        country = "Canada"
                    elif "_au_" in filename:
                        country = "Australia"
                    elif "_nz_" in filename:
                        country = "New Zealand"
                    elif "_in_" in filename:
                        country = "India"
                    else:
                        country = "Global/Unknown"
                
                # Check for C2C
                is_c2c = any(keyword in content_lower for keyword in c2c_keywords)
                
                country_stats[country]['total'] += 1
                if is_c2c:
                    country_stats[country]['c2c'] += 1
                    
        except Exception:
            pass

# Sort by total descending
sorted_stats = dict(sorted(country_stats.items(), key=lambda x: x[1]['total'], reverse=True))
print(json.dumps(sorted_stats, indent=2))
