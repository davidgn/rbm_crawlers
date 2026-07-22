import os

platforms = [
    # Uganda (4)
    ("JijiUganda", "https://jiji.ug", "Uganda"),
    ("KupatanaUganda", "https://kupatana.co.ug", "Uganda"),
    ("AfribabaUganda", "https://ug.afribaba.com", "Uganda"),
    ("PundasUganda", "https://pundas.com", "Uganda"),
    # Tanzania (3)
    ("JijiTanzania", "https://jiji.co.tz", "Tanzania"),
    ("KupatanaTanzania", "https://kupatana.com", "Tanzania"),
    ("BambaAdTanzania", "https://bambaad.com", "Tanzania"),
    # Mozambique (3)
    ("EstakkiMozambique", "https://estakki.com", "Mozambique"),
    ("MrkakaMozambique", "https://mrkaka.com", "Mozambique"),
    ("AfribabaMozambique", "https://mz.afribaba.com", "Mozambique"),
    # Zambia (2)
    ("BineZambia", "https://bine.co.zm", "Zambia"),
    ("AfribabaZambia", "https://zm.afribaba.com", "Zambia"),
    # Somalia (1)
    ("GoobtaSomalia", "https://goobta.com", "Somalia"),
    # Rwanda (2)
    ("TohozaRwanda", "https://tohoza.com", "Rwanda"),
    ("AfribabaRwanda", "https://rw.afribaba.com", "Rwanda"),
    # Burundi (1)
    ("UmunaraBurundi", "https://umunara.com", "Burundi"),
    # South Sudan (1)
    ("JunubClassifieds", "https://junubclassifieds.com", "South Sudan"),
    # Sierra Leone (1)
    ("SaloneGoo", "https://slgoo.sl", "Sierra Leone"),
    # Gambia (1)
    ("BazarAfriqueGambia", "https://bazarafrique.com", "Gambia"),
    # Botswana (1)
    ("TheAdvertiserBotswana", "https://theadvertiser.co.bw", "Botswana"),
    # Djibouti (1)
    ("YawaayeDjibouti", "https://yawaaye.com", "Djibouti"),
    # Eswatini (1)
    ("EswatiniClassifieds", "https://eswatiniclassifieds.com", "Eswatini"),
    # Eritrea (2)
    ("DendashoEritrea", "https://dendasho.com", "Eritrea"),
    ("MrkakaEritrea", "https://er.mrkaka.com", "Eritrea")
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
    filename = f"/opt/repos/rbm_crawlers/src/genuine_reg_{platform.lower()}_spider.py"
    with open(filename, "w") as f:
        f.write(template.format(spider_class=platform, platform=platform, base_url=url, territory=territory))

print(f"Successfully generated {len(platforms)} genuine regular spiders.")
