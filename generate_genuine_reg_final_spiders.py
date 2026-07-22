import os

platforms = [
    # Final Micro-Fleet
    ("CoinAfriqueNigerFinal", "https://ne.coinafrique.com", "Niger"),
    ("AfribabaNigerFinal", "https://ne.afribaba.com", "Niger"),
    ("CoinAfriqueBurkinaFasoFinal", "https://bf.coinafrique.com", "Burkina Faso"),
    ("RodwokoBurkinaFasoFinal", "https://rodwoko.com", "Burkina Faso"),
    ("ClassifiedsZimbabweFinal", "https://www.classifieds.co.zw", "Zimbabwe"),
    ("TayaraTunisiaFinal", "https://www.tayara.tn", "Tunisia"),
    ("OpenSooqTunisiaFinal", "https://tn.opensooq.com", "Tunisia"),
    ("UmunaraBurundiFinal", "https://umunara.com", "Burundi"),
    ("AfribabaBurundiFinal", "https://bi.afribaba.com", "Burundi"),
    ("JunubClassifiedsSouthSudanFinal", "https://junubclassifieds.com", "South Sudan"),
    ("AfribabaSouthSudanFinal", "https://ss.afribaba.com", "South Sudan"),
    ("LiberiaBuyAndSellFinal", "https://liberiabuyandsell.com", "Liberia"),
    ("FinnNorwayFinal", "https://www.finn.no", "Norway")
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
    filename = f"/opt/repos/rbm_crawlers/src/genuine_reg_final_{platform.lower()}_spider.py"
    with open(filename, "w") as f:
        f.write(template.format(spider_class=platform, platform=platform, base_url=url, territory=territory))

print(f"Successfully generated {len(platforms)} final genuine regular spiders.")
