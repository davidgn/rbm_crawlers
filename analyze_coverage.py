import os
import re
from collections import defaultdict
import json

spider_dir = '/opt/repos/rbm_crawlers/src'
territory_pattern = re.compile(r'territory\s*=\s*["\']([^"\']+)["\']')

country_counts = defaultdict(int)

for filename in os.listdir(spider_dir):
    if filename.endswith('spider.py'):
        path = os.path.join(spider_dir, filename)
        try:
            with open(path, 'r', encoding='utf-8') as f:
                content = f.read()
                match = territory_pattern.search(content)
                if match:
                    country = match.group(1).strip()
                    country_counts[country] += 1
                else:
                    # Try to infer from filename if territory not explicitly set
                    if "_us_" in filename or filename.endswith("u_s_spider.py"):
                        country_counts["United States"] += 1
                    elif "_uk_" in filename or filename.endswith("u_k_spider.py"):
                        country_counts["United Kingdom"] += 1
                    elif "_ca_" in filename:
                        country_counts["Canada"] += 1
                    elif "_au_" in filename:
                        country_counts["Australia"] += 1
                    elif "_nz_" in filename:
                        country_counts["New Zealand"] += 1
                    elif "_in_" in filename:
                        country_counts["India"] += 1
                    else:
                        country_counts["Unknown/Global"] += 1
        except Exception:
            pass

print(json.dumps(dict(sorted(country_counts.items(), key=lambda x: x[1], reverse=True)), indent=2))
