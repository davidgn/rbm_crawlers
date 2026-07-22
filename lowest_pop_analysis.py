import os
import re
import json

spider_dir = '/opt/repos/rbm_crawlers/src'
territory_pattern = re.compile(r'territory\s*=\s*["\']([^"\']+)["\']')
c2c_keywords = ['c2c', 'marketplace', 'used', 'second-hand', 'secondhand', 'classified', 'auction', 'trade', 'buyback', 'peer-to-peer', 'p2p', 'olx', 'haraj', 'bikroy', 'chotot', 'jiji', 'opensooq', 'coinafrique', 'mercado']

# Target countries between 5M and 10M population
target_countries = {
    "Tajikistan": 10, "Israel": 9, "Papua New Guinea": 9, "Togo": 9, "Austria": 9,
    "Switzerland": 9, "Sierra Leone": 9, "Laos": 8, "Hong Kong": 7.5, "Serbia": 7,
    "Nicaragua": 7, "Libya": 7, "Paraguay": 7, "Kyrgyzstan": 7, "Bulgaria": 7,
    "Turkmenistan": 6, "El Salvador": 6, "Congo": 6, "Singapore": 6, "Denmark": 6,
    "Slovakia": 5.5, "Central African Republic": 5.5, "Finland": 5.5, "Norway": 5.5,
    "Liberia": 5.5, "Palestine": 5.5, "New Zealand": 5, "Costa Rica": 5, "Lebanon": 5,
    "Ireland": 5
}

country_stats = {c: {'total': 0, 'c2c': 0} for c in target_countries}

# Universal coverage mapping
universal_coverage = {
    "MercadoLibre": ["Nicaragua", "Paraguay", "El Salvador", "Costa Rica"],
    "CoinAfrique": ["Togo", "Congo"],
    "OpenSooq": ["Libya", "Palestine", "Lebanon"]
}

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
                    if "_nz_" in filename: country = "New Zealand"
                    else: continue
                
                if country in country_stats:
                    is_c2c = any(keyword in content_lower for keyword in c2c_keywords)
                    country_stats[country]['total'] += 1
                    if is_c2c:
                        country_stats[country]['c2c'] += 1
                    
        except Exception:
            pass

# Add universal coverage bonuses
for spider, countries in universal_coverage.items():
    for c in countries:
        if c in country_stats:
            country_stats[c]['c2c'] += 1
            country_stats[c]['total'] += 1

# Calculate zero/low coverage
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
