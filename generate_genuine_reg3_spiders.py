import os

platforms = [
    # Subagent 4 (Eur/Am)
    ("OlxUA", "https://www.olx.ua", "Ukraine"),
    ("FinnNO", "https://www.finn.no", "Norway"),
    ("LocantoBolivia", "https://www.locanto.com.bo", "Bolivia"),
    ("CyphomaHaiti", "https://www.cyphoma.com/ht", "Haiti"),
    ("HotFreeListHaiti", "https://haiti.hotfreelist.com", "Haiti"),
    ("Encuentra24Honduras", "https://www.encuentra24.com/honduras-es", "Honduras"),
    ("Encuentra24Nicaragua", "https://www.encuentra24.com/nicaragua-es", "Nicaragua"),
    ("LocantoNicaragua", "https://www.locanto.com.ni", "Nicaragua"),
    ("Encuentra24ElSalvador", "https://www.encuentra24.com/el-salvador-es", "El Salvador"),
    ("JamaicaClassifiedOnline", "https://jamaicaclassifiedonline.com", "Jamaica"),
    ("BambaAdGuyana", "https://bambaad.com", "Guyana"),
    ("AdsCenterSuriname", "https://suriname.ads.center", "Suriname"),
    ("KugliSuriname", "https://www.kugli.com/Suriname", "Suriname"),
    ("BazarLu", "https://www.bazar.lu", "Luxembourg"),
    ("MaltaPark", "https://www.maltapark.com", "Malta"),
    ("Classi4uFaroeIslands", "https://faroeislands.classi4u.com", "Faeroe Islands"),
    ("SanMarinoMarket", "https://www.sanmarinomarket.com", "San Marino"),
    ("WantedInRome", "https://www.wantedinrome.com/classifieds.html", "Vatican City")
]

template = """import re
from html_search_spider import HTMLSearchSpider

class {spider_class}Spider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="{platform}", base_url="{base_url}",
            search_path="search?q={{search_term}}",
            selectors={{'container': 'div.item', 'title': 'h3', 'price': '.price'}},
            territory="{territory}", limit_pages=limit_pages
        )

if __name__ == "__main__":
    {spider_class}Spider(limit_pages=1).run()
"""

os.makedirs("/opt/repos/rbm_crawlers/src/", exist_ok=True)

for platform, url, territory in platforms:
    filename = f"/opt/repos/rbm_crawlers/src/genuine_reg3_{platform.lower()}_spider.py"
    with open(filename, "w") as f:
        f.write(template.format(spider_class=platform, platform=platform, base_url=url, territory=territory))

print(f"Successfully generated {len(platforms)} genuine regular spiders.")
