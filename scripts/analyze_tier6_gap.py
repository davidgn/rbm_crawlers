import os
import re
import json

spider_dir = '/opt/repos/rbm_crawlers/src'
territory_pattern = re.compile(r'territory\s*=\s*["\']([^"\']+)["\']')
c2c_keywords = ['c2c', 'marketplace', 'used', 'second-hand', 'secondhand', 'classified', 'auction', 'trade', 'buyback', 'peer-to-peer', 'p2p', 'olx', 'haraj', 'bikroy', 'chotot', 'jiji']

target_countries = {
    "Fiji": 0.92, "Comoros": 0.83, "Guyana": 0.80, "Bhutan": 0.78, "Solomon Islands": 0.72,
    "Macau": 0.69, "Luxembourg": 0.64, "Montenegro": 0.62, "Suriname": 0.61, "Cape Verde": 0.59,
    "Western Sahara": 0.57, "Malta": 0.53, "Maldives": 0.52, "Brunei": 0.44, "Bahamas": 0.41,
    "Belize": 0.40, "Guadeloupe": 0.39, "Iceland": 0.37, "Martinique": 0.36, "Vanuatu": 0.32,
    "French Guiana": 0.30, "Mayotte": 0.32, "New Caledonia": 0.27, "Barbados": 0.28, "French Polynesia": 0.28,
    "Sao Tome and Principe": 0.22, "Samoa": 0.22, "Curacao": 0.19, "Saint Lucia": 0.17, "Guam": 0.17,
    "Kiribati": 0.13, "Grenada": 0.12, "Micronesia": 0.11, "Jersey": 0.11, "Seychelles": 0.10, "Tonga": 0.10
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
