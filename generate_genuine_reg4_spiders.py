import os

platforms = [
    # Subagent 5 (Oceania & Carribean/Islands)
    ("Classi4uSolomon", "https://solomon-islands.classi4u.com", "Solomon Islands"),
    ("CraigslistMicronesia", "https://micronesia.craigslist.org", "Micronesia"),
    ("Everisamting", "https://everisamting.com", "Vanuatu"),
    ("StLuciaBusiness", "https://www.stluciabusinessonline.com", "Saint Lucia"),
    ("STPMarket", "https://stpmarket.com", "Sao Tome and Principe"),
    ("BambaAdKiribati", "https://bambaad.com", "Kiribati"),
    ("TongaMarket", "https://www.tongamarket.com", "Tonga"),
    ("DominicaClassified", "https://dominicaclassified.com", "Dominica"),
    ("NewNusedLink", "https://newnusedlink.com", "Antigua and Barbuda"),
    ("ExpatPalau", "https://www.expat.com/en/classifieds/oceania/palau/", "Palau"),
    ("RebuydealTuvalu", "https://www.rebuydeal.com", "Tuvalu"),
    ("ExpatNauru", "https://www.expat.com/en/classifieds/oceania/nauru/", "Nauru"),
    ("FreeAdsTimeGreenland", "https://www.freeadstime.org", "Greenland"),
    ("ClickMonaco", "https://clickmonaco.com", "Monaco"),
    ("Liewo", "https://www.liewo.li", "Liechtenstein")
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
    filename = f"/opt/repos/rbm_crawlers/src/genuine_reg4_{platform.lower()}_spider.py"
    with open(filename, "w") as f:
        f.write(template.format(spider_class=platform, platform=platform, base_url=url, territory=territory))

print(f"Successfully generated {len(platforms)} genuine regular spiders.")
