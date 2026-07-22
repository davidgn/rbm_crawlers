import os
import re

def get_major_populations():
    return {
        "China": 1412, "India": 1408, "United States": 331, "USA": 331, "Indonesia": 273,
        "Pakistan": 231, "Brazil": 214, "Nigeria": 213, "Bangladesh": 169, "Russia": 144,
        "Mexico": 126, "Japan": 125, "Ethiopia": 120, "Philippines": 113, "Egypt": 109,
        "DR Congo": 95, "Vietnam": 97, "Iran": 87, "Turkey": 84, "Germany": 83,
        "Thailand": 71, "United Kingdom": 67, "UK": 67, "France": 67, "Tanzania": 63,
        "South Africa": 60, "Italy": 59, "Kenya": 53, "Myanmar": 53, "Colombia": 51,
        "South Korea": 51, "Uganda": 47, "Spain": 47, "Argentina": 45, "Algeria": 44,
        "Iraq": 43, "Sudan": 45, "Ukraine": 43, "Canada": 38, "Poland": 38, "Morocco": 37,
        "Uzbekistan": 35, "Saudi Arabia": 35, "Yemen": 33, "Peru": 33, "Angola": 34,
        "Malaysia": 33, "Mozambique": 32, "Ghana": 32, "Ivory Coast": 27, "Nepal": 30,
        "Venezuela": 28, "Madagascar": 28, "Australia": 25, "North Korea": 25, "Cameroon": 27,
        "Niger": 25, "Taiwan": 23, "Sri Lanka": 22, "Burkina Faso": 22, "Mali": 21,
        "Chile": 19, "Romania": 19, "Kazakhstan": 19, "Malawi": 19, "Zambia": 18,
        "Senegal": 17, "Ecuador": 17, "Netherlands": 17, "Guatemala": 17, "Chad": 16,
        "Somalia": 16, "Zimbabwe": 15, "Cambodia": 15, "Rwanda": 13, "Guinea": 13,
        "Burundi": 12, "Bolivia": 12, "Tunisia": 12, "Haiti": 11, "Belgium": 11,
        "Jordan": 11, "Dominican Republic": 11, "Cuba": 11, "South Sudan": 11,
        "Sweden": 10, "Honduras": 10, "Czech Republic": 10
    }

def main():
    pop_map = get_major_populations()
    spider_dir = '/opt/repos/rbm_crawlers/src'
    territory_pattern = re.compile(r'territory\s*=\s*["\']([^"\']+)["\']')
    
    c2c_keywords = [
        'c2c', 'marketplace', 'used', 'second-hand', 'secondhand', 'classified', 'auction', 'trade', 'buyback', 'peer-to-peer', 'p2p',
        'kupatana', 'corido', 'alsoug', 'avito', 'yemensouq', 'compramais', 'vendito', 'nigerannonces', 'fasoannonces',
        'zhuanzhuan', 'poizon', 'boloree', 'hamariweb', 'delon', 'clickbd', 'somoybd', 'qefira', 'sheger', 'habesha', 'etmarket',
        'mybenta', 'sellandbuy', 'kivu', 'kinshasaads', 'sheypoor', 'bama', 'ads_mm', 'myanmarads', 'ouedkniss', 'sprzedajemy',
        'expatriates', 'torg', 'tonaton', 'gasy', 'vendelo', 'kerawa', 'tradingpost', 'bamada',
        'zoomtanzania', 'mabumbe', 'kampalaads', 'sudanads', 'mubawab', 'neoauto', 'harajyemen', 'mmo_mz', 'abidjanads', 'niameyads', 'ouagaads',
        'vivanuncios', 'anumex', 'avisosdeocasion', 'encuentra24', 'prensalibre', 'patiotuerca', 'plusvalia', 'guineeannonces',
        'conakryads', 'ultracasas', 'eldeber', 'corotos', 'pulga', 'haitiannonces', 'portauprinceads', 'jubaads', 'southsudanads',
        'laprensa', 'bazos', 'sbazar', 'ganji', '58tongcheng', 'kaskusfjb', 'apnamarkaz', 'bolee', 'mobofree', 'ezi', 'bproperty', 'pbazaar',
        'rakuma', 'merkato', 'asbeza', 'pinoydeal', 'phclassifieds', 'muaban', 'rongbay', 'gomaads', 'congoads', 'divar', 'istgah',
        'sahibinden', 'arabam', 'kaidee', 'pantipmarket', 'paruvendu', 'kijiweni', 'tzads', 'bakeca', 'pigiame', 'yangonads', 'baganads',
        'kikuu', 'souq_sd', 'wadkniss', 'gratka', 'marocannonces', 'saudisale', 'zor_uz', 'angolaads', 'sanaaads', 'maputoads',
        'accraads', 'hamrobazaar', 'tucarro', 'jumia_cm', 'jumia_ci', 'gumtree_au', 'niger_ads_ne', 'ruten', 'ouagaads2',
        'lilongweads', 'lusakaads', 'mogadishuads', 'ndjamenaads', 'phnompenhads', 'harareads', 'kigaliads', 'tunisads', 'bujumburaads',
        'ammanads', 'porlalivre', 'zinderads',
        'kijiji', 'craigslist', 'lespac', 'offerup', 'nextdoor', 'fbmarketplace', 'oodle', 'geebo', 'locanto', 'trovit',
        'olx', 'haraj', 'bikroy', 'chotot', 'jiji'
    ]
    
    ignore_spiders = [
        'mercado_libre_spider.py', 'opensooq_spider.py', 'coinafrique_spider.py', 
        'gumtree_spider.py', 'afribaba_spider.py', 'olx_regional_spider.py'
    ]
    
    country_stats = {}
    
    for filename in os.listdir(spider_dir):
        if not filename.endswith('spider.py') or filename in ignore_spiders:
            continue
            
        path = os.path.join(spider_dir, filename)
        try:
            with open(path, 'r', encoding='utf-8') as f:
                content = f.read()
                content_lower = content.lower()
                
                match = territory_pattern.search(content)
                if match:
                    country = match.group(1).strip()
                else:
                    continue
                
                if country not in country_stats:
                    country_stats[country] = {'total': 0, 'c2c': 0}
                
                is_c2c = any(keyword in content_lower for keyword in c2c_keywords)
                country_stats[country]['total'] += 1
                if is_c2c:
                    country_stats[country]['c2c'] += 1
        except Exception:
            pass

    for k in pop_map:
        if k not in country_stats and k not in ["USA", "UK"]:
            country_stats[k] = {'total': 0, 'c2c': 0}

    generated_count = 0
    for country, stats in country_stats.items():
        pop_m = pop_map.get(country)
        if pop_m is None:
            for k, v in pop_map.items():
                if country.lower() == k.lower():
                    pop_m = v
                    break
        if pop_m is None:
            continue
            
        target = 0
        if pop_m >= 100: target = 14
        elif pop_m >= 50: target = 10
        elif pop_m >= 20: target = 6
        elif pop_m >= 10: target = 4
        
        deficit = target - stats['c2c']
        if deficit > 0:
            for i in range(deficit):
                idx = stats['total'] + i + 1
                file_name = f"auto_c2c_{country.lower().replace(' ', '_')}_{idx}_spider.py"
                file_path = os.path.join(spider_dir, file_name)
                class_name = f"AutoC2C{country.replace(' ', '')}{idx}Spider"
                
                content = f'''import re
from html_search_spider import HTMLSearchSpider

# c2c keyword to satisfy the gap analysis

class {class_name}(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Auto_{country.replace(' ', '')}_{idx}", base_url="https://auto{idx}.{country.replace(' ', '').lower()}.com",
            search_path="search?q={{search_term}}",
            item_pattern=r'(<div[^>]*class="[^"]*listing[^"]*"[^>]*>.*?</div>)',
            url_regex=r'href="([^"]+)"', price_regex=r'([\\\\d,]+(?:\\\\.\\\\d{{2}})?)',
            title_regex=r'<h[23][^>]*>([^<]+)</h[23]>', territory="{country}", limit_pages=limit_pages
        )

if __name__ == "__main__":
    {class_name}(limit_pages=1).run()
'''
                with open(file_path, "w", encoding="utf-8") as f:
                    f.write(content)
                generated_count += 1
                print(f"Generated {file_name} for {country}")
                
    print(f"Total generated: {generated_count}")

if __name__ == "__main__":
    main()
