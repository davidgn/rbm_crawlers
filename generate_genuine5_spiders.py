import os

platforms = [
    # RUSSIA (21 Platforms)
    ("AvitoRU", "https://avito.ru", "Russia"),
    ("Yula", "https://youla.ru", "Russia"),
    ("Meshok", "https://meshok.net", "Russia"),
    ("AuRu", "https://au.ru", "Russia"),
    ("Farpost", "https://farpost.ru", "Russia"),
    ("Irr", "https://irr.ru", "Russia"),
    ("Gde", "https://gde.ru", "Russia"),
    ("BarahlaNet", "https://barahla.net", "Russia"),
    ("Sindom", "https://sindom.ru", "Russia"),
    ("Ubu", "https://ubu.ru", "Russia"),
    ("Kupiprodai", "https://kupiprodai.ru", "Russia"),
    ("Doska", "https://doska.ru", "Russia"),
    ("Unibo", "https://unibo.ru", "Russia"),
    ("AcoolA", "https://acoola.ru", "Russia"),
    ("Flagma", "https://flagma.ru", "Russia"),
    ("Nadoske", "https://nadoske.ru", "Russia"),
    ("DoskiRu", "https://doski.ru", "Russia"),
    ("Dmir", "https://dmir.ru", "Russia"),
    ("TysyachaDosok", "https://1000dosok.ru", "Russia"),
    ("Ryinok", "https://ryinok.ru", "Russia"),
    ("BeboRu", "https://bebo.ru", "Russia"),

    # INDIA (13 Platforms)
    ("OlxIndia", "https://olx.in", "India"),
    ("Quikr", "https://quikr.com", "India"),
    ("Sulekha", "https://sulekha.com", "India"),
    ("ClickIndia", "https://clickindia.com", "India"),
    ("LocantoIndia", "https://locanto.in", "India"),
    ("FreeAdsIndia", "https://freeads.in", "India"),
    ("Khojle", "https://khojle.in", "India"),
    ("VivastreetIndia", "https://vivastreet.co.in", "India"),
    ("AdsGlobeIndia", "https://india.adsglobe.com", "India"),
    ("PostFreeOnline", "https://postfreeonline.com", "India"),
    ("CraigslistIndia", "https://craigslist.co.in", "India"),
    ("ExpatriatesIndia", "https://expatriates.com", "India"),
    ("AdeexIndia", "https://adeex.in", "India"),
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
    filename = f"/opt/repos/rbm_crawlers/src/genuine5_{platform.lower()}_spider.py"
    with open(filename, "w") as f:
        f.write(template.format(spider_class=platform, platform=platform, base_url=url, territory=territory))

print(f"Successfully generated {len(platforms)} genuine RU/IN spiders.")
