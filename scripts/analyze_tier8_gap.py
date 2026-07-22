import os
import re
import json

spider_dir = '/opt/repos/rbm_crawlers/src'
territory_pattern = re.compile(r'territory\s*=\s*["\']([^"\']+)["\']')
c2c_keywords = ['c2c', 'marketplace', 'used', 'second-hand', 'secondhand', 'classified', 'auction', 'trade', 'buyback', 'peer-to-peer', 'p2p', 'olx', 'haraj', 'bikroy', 'chotot', 'jiji']

target_countries = {
    "Antarctica": 0.004, "Svalbard and Jan Mayen": 0.0029, "Christmas Island": 0.0017,
    "Norfolk Island": 0.0017, "Cocos (Keeling) Islands": 0.0006, 
    "French Southern Territories": 0.00015, "Pitcairn Islands": 0.00005,
    "United States Minor Outlying Islands": 0.0003, "British Indian Ocean Territory": 0.003,
    "South Georgia and the South Sandwich Islands": 0.00002
}

country_stats = {c: {'total': 0, 'c2c': 0} for c in target_countries}

ignore_spiders = ['mercado_libre_spider.py', 'opensooq_spider.py', 'coinafrique_spider.py']

for filename in os.listdir(spider_dir):
    if filename.endswith('spider.py') and filename not in ignore_spiders:
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
                    continue
                
                if country in country_stats:
                    is_c2c = any(keyword in content_lower for keyword in c2c_keywords)
                    country_stats[country]['total'] += 1
                    if is_c2c:
                        country_stats[country]['c2c'] += 1
                    
        except Exception:
            pass

results = {
    "zero_c2c": [],
    "one_c2c": [],
    "well_covered": []
}

for c, stats in sorted(country_stats.items(), key=lambda x: target_countries[x[0]], reverse=True):
    pop = target_countries[c]
    entry = f"{c} ({pop}M) - Total: {stats['total']}, C2C: {stats['c2c']}"
    if stats['c2c'] == 0:
        results["zero_c2c"].append(entry)
    elif stats['c2c'] == 1:
        results["one_c2c"].append(entry)
    else:
        results["well_covered"].append(entry)

print(json.dumps(results, indent=2))
