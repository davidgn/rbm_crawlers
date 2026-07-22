import os
import re
import json

spider_dir = '/opt/repos/rbm_crawlers/src'
territory_pattern = re.compile(r'territory\s*=\s*["\']([^"\']+)["\']')
c2c_keywords = ['c2c', 'marketplace', 'used', 'second-hand', 'secondhand', 'classified', 'auction', 'trade', 'buyback', 'peer-to-peer', 'p2p', 'olx', 'haraj', 'bikroy', 'chotot', 'jiji', 'opensooq', 'coinafrique', 'mercado']

# Target countries between 1M and 5M population
target_countries = {
    "New Zealand": 5.1, "Mauritania": 4.7, "Panama": 4.4, "Kuwait": 4.3, "Croatia": 4.0,
    "Georgia": 3.7, "Eritrea": 3.6, "Uruguay": 3.4, "Mongolia": 3.4, "Bosnia and Herzegovina": 3.2,
    "Puerto Rico": 3.2, "Armenia": 2.8, "Lithuania": 2.8, "Albania": 2.8, "Jamaica": 2.8,
    "Moldova": 2.6, "Namibia": 2.5, "Gambia": 2.4, "Botswana": 2.3, "Gabon": 2.3,
    "Lesotho": 2.3, "Slovenia": 2.1, "Guinea-Bissau": 2.0, "North Macedonia": 2.0, "Latvia": 1.8,
    "Equatorial Guinea": 1.4, "Trinidad and Tobago": 1.4, "Bahrain": 1.4, "Estonia": 1.3,
    "Timor-Leste": 1.3, "Mauritius": 1.3, "Cyprus": 1.2, "Eswatini": 1.1, "Djibouti": 1.0
}

country_stats = {c: {'total': 0, 'c2c': 0} for c in target_countries}

# Universal coverage mapping
universal_coverage = {
    "MercadoLibre": ["Uruguay", "Panama"],
    "CoinAfrique": ["Gabon"],
    "OpenSooq": ["Kuwait", "Bahrain"]
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
