import os
import re
import json

spider_dir = '/opt/repos/rbm_crawlers/src'
territory_pattern = re.compile(r'territory\s*=\s*["\']([^"\']+)["\']')
c2c_keywords = ['c2c', 'marketplace', 'used', 'second-hand', 'secondhand', 'classified', 'auction', 'trade', 'buyback', 'peer-to-peer', 'p2p', 'olx', 'haraj', 'bikroy', 'chotot', 'jiji']

# Target countries between 10M and 30M population
target_countries = {
    "Madagascar": 30, "Cameroon": 28, "Cote d'Ivoire": 28, "Australia": 26, "Niger": 27, 
    "Taiwan": 24, "Mali": 23, "Burkina Faso": 23, "Syria": 23, "Sri Lanka": 22, 
    "Malawi": 21, "Zambia": 20, "Romania": 19, "Chile": 19, "Kazakhstan": 19, 
    "Ecuador": 18, "Guatemala": 18, "Chad": 18, "Somalia": 18, "Senegal": 18, 
    "Netherlands": 17, "Cambodia": 17, "Zimbabwe": 16, "Guinea": 14, "Rwanda": 14, 
    "Benin": 13, "Burundi": 13, "Bolivia": 12, "Tunisia": 12, "Haiti": 11, 
    "Belgium": 11, "Jordan": 11, "Dominican Republic": 11, "Cuba": 11, "Honduras": 10, 
    "Sweden": 10, "Czechia": 10, "Azerbaijan": 10, "Portugal": 10, "Greece": 10, 
    "Hungary": 10, "Tajikistan": 10, "UAE": 9
}

country_stats = {c: {'total': 0, 'c2c': 0} for c in target_countries}

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
                    # Alias handling
                    if country == "Côte d": country = "Cote d'Ivoire"
                else:
                    if "_au_" in filename: country = "Australia"
                    else: continue
                
                if country in country_stats:
                    is_c2c = any(keyword in content_lower for keyword in c2c_keywords)
                    country_stats[country]['total'] += 1
                    if is_c2c:
                        country_stats[country]['c2c'] += 1
                    
        except Exception:
            pass

# Calculate zero/low coverage
results = {
    "zero_c2c": [],
    "one_c2c": [],
    "well_covered": []
}

for c, stats in sorted(country_stats.items(), key=lambda x: target_countries[x[0]], reverse=True):
    # Bolivia, Ecuador, Guatemala, Honduras, Dominican Republic are covered by MercadoLibre global adapter natively!
    if c in ["Bolivia", "Ecuador", "Guatemala", "Honduras", "Dominican Republic"]:
        stats['c2c'] += 1 # MercadoLibre covers it
        stats['total'] += 1
        
    pop = target_countries[c]
    entry = f"{c} ({pop}M) - Total: {stats['total']}, C2C: {stats['c2c']}"
    if stats['c2c'] == 0:
        results["zero_c2c"].append(entry)
    elif stats['c2c'] == 1:
        results["one_c2c"].append(entry)
    else:
        results["well_covered"].append(entry)

print(json.dumps(results, indent=2))
