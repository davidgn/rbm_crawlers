import os
import re
import json

spider_dir = '/opt/repos/rbm_crawlers/src'
territory_pattern = re.compile(r'territory\s*=\s*["\']([^"\']+)["\']')
c2c_keywords = ['c2c', 'marketplace', 'used', 'second-hand', 'secondhand', 'classified', 'auction', 'trade', 'buyback', 'peer-to-peer', 'p2p', 'olx', 'haraj', 'bikroy', 'chotot', 'jiji']

target_countries = {
    "Antigua and Barbuda": 0.093, "Isle of Man": 0.084, "Andorra": 0.079, "Dominica": 0.072,
    "Cayman Islands": 0.068, "Bermuda": 0.064, "Greenland": 0.056, "Northern Mariana Islands": 0.049,
    "Saint Kitts and Nevis": 0.047, "Turks and Caicos Islands": 0.045, "American Samoa": 0.044,
    "Sint Maarten": 0.043, "Liechtenstein": 0.039, "Monaco": 0.038, "San Marino": 0.033,
    "Saint Martin": 0.032, "Gibraltar": 0.032, "British Virgin Islands": 0.031, "Palau": 0.018,
    "Cook Islands": 0.017, "Anguilla": 0.015, "Nauru": 0.012, "Wallis and Futuna": 0.011,
    "Tuvalu": 0.011, "Saint Barthelemy": 0.010, "Saint Pierre and Miquelon": 0.005,
    "Montserrat": 0.004, "Falkland Islands": 0.003, "Niue": 0.0019, "Tokelau": 0.0018,
    "Vatican City": 0.0008
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
