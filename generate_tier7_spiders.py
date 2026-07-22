import os

spiders = [
    # China (5)
    ("china_locanto", "Locanto_CN", "https://china.locanto.cn", "China"),
    ("china_baixing2", "Baixing_CN", "https://www.baixing.com", "China"),
    ("china_ganji2", "Ganji_CN", "https://www.ganji.com", "China"),
    ("china_58tongcheng2", "58Tongcheng_CN", "https://www.58.com", "China"),
    ("china_zhuanzhuan2", "Zhuanzhuan_CN", "https://www.zhuanzhuan.com", "China"),
    
    # United States (7)
    ("us_geebo", "Geebo_US", "https://geebo.com", "United States"),
    ("us_oodle", "Oodle_US", "https://www.oodle.com", "United States"),
    ("us_locanto", "Locanto_US", "https://www.locanto.com", "United States"),
    ("us_hoobly", "Hoobly_US", "https://www.hoobly.com", "United States"),
    ("us_adsglobe", "AdsGlobe_US", "https://www.adsglobe.com", "United States"),
    ("us_claz", "Claz_US", "https://claz.org", "United States"),
    ("us_bookoo2", "Bookoo_US", "https://www.bookoo.com", "United States"),
    
    # Russia (7)
    ("russia_yula2", "Yula_RU", "https://youla.ru", "Russia"),
    ("russia_avito2", "Avito_RU", "https://www.avito.ru", "Russia"),
    ("russia_irr", "IRR_RU", "https://irr.ru", "Russia"),
    ("russia_kupiprodai", "KupiProdai_RU", "https://kupiprodai.ru", "Russia"),
    ("russia_locanto", "Locanto_RU", "https://russia.locanto.ru", "Russia"),
    ("russia_doski2", "Doski_RU", "https://www.doski.ru", "Russia"),
    ("russia_drom", "Drom_RU", "https://www.drom.ru", "Russia"), # Wait, Drom is auto. Change it to barahla2
    ("russia_barahla2", "Barahla_RU", "https://barahla.net", "Russia"),
    
    # Japan (2)
    ("japan_locanto", "Locanto_JP", "https://japan.locanto.jp", "Japan"),
    ("japan_jmty2", "Jmty_JP", "https://jmty.jp", "Japan"),
    
    # Germany (2)
    ("germany_markt", "Markt_DE", "https://www.markt.de", "Germany"),
    ("germany_quoka", "Quoka_DE", "https://www.quoka.de", "Germany"),
    
    # France (4)
    ("france_locanto", "Locanto_FR", "https://france.locanto.fr", "France"),
    ("france_topannonces", "TopAnnonces_FR", "https://www.topannonces.fr", "France"),
    ("france_vivastreet", "Vivastreet_FR", "https://www.vivastreet.com", "France"),
    ("france_paruvendu2", "ParuVendu_FR", "https://www.paruvendu.fr", "France"),
    
    # Italy (3)
    ("italy_locanto", "Locanto_IT", "https://italy.locanto.it", "Italy"),
    ("italy_kijiji", "Kijiji_IT", "https://www.kijiji.it", "Italy"),
    ("italy_bakeca2", "Bakeca_IT", "https://www.bakeca.it", "Italy"),
    
    # South Korea (1)
    ("southkorea_locanto", "Locanto_KR", "https://southkorea.locanto.com", "South Korea"),
    
    # Canada (3)
    ("canada_locanto", "Locanto_CA", "https://canada.locanto.ca", "Canada"),
    ("canada_varagesale2", "VarageSale_CA", "https://www.varagesale.com", "Canada"),
    ("canada_kijiji2", "Kijiji_CA", "https://www.kijiji.ca", "Canada"),
]

# Ensure we don't duplicate russia_drom (I commented it out but I need to make sure the list is 34)
# Let's count: China 5 + US 7 + Russia 7 (wait, I have 8 for Russia in the code above with Drom, let me fix it)
spiders = [s for s in spiders if s[0] != "russia_drom"]

template = """import re
from html_search_spider import HTMLSearchSpider

class {class_name}(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="{platform_name}", base_url="{base_url}",
            search_path="search?q={{search_term}}",
            selectors={{'container': 'div.item', 'title': 'h3', 'price': '.price'}},
            territory="{territory}", limit_pages=limit_pages
        )

if __name__ == "__main__":
    {class_name}(limit_pages=1).run()
"""

for file_prefix, platform_name, base_url, territory in spiders:
    class_name = "".join(word.capitalize() for word in file_prefix.replace("-", "_").split("_")) + "Spider"
    file_path = f"/opt/repos/rbm_crawlers/src/{file_prefix}_spider.py"
    content = template.format(
        class_name=class_name,
        platform_name=platform_name,
        base_url=base_url,
        territory=territory
    )
    with open(file_path, "w", encoding="utf-8") as f:
        f.write(content)

print(f"Successfully generated {len(spiders)} spiders.")
