import os

platforms = [
    # Subagent 1 (Africa 1)
    ("WappyCD", "https://wappy.cd", "DR Congo"),
    ("JijiCD", "https://jiji.cd", "DR Congo"),
    ("MediaCongoNet", "https://www.mediacongo.net", "DR Congo"),
    ("CoinAfriqueCD", "https://cd.coinafrique.com", "DR Congo"),
    ("OpenSooqSD", "https://sd.opensooq.com/en", "Sudan"),
    ("Alsoug", "https://alsoug.com", "Sudan"),
    ("Ouedkniss", "https://www.ouedkniss.com", "Algeria"),
    ("AvitoMA", "https://www.avito.ma", "Morocco"),
    ("BazarAfriqueAO", "https://ao.bazarafrique.com", "Angola"),
    ("SaldosAngola", "https://saldosangola.com", "Angola"),
    ("JijiGH", "https://jiji.com.gh", "Ghana"),
    ("JijiCI", "https://jiji.ci", "Ivory Coast"),
    ("CoinAfriqueCI", "https://ci.coinafrique.com", "Ivory Coast"),
    ("LocantoCI", "https://www.locanto.ci", "Ivory Coast"),
    ("CoinAfriqueCM", "https://cm.coinafrique.com", "Cameroon"),
    ("CoinAfriqueNE", "https://ne.coinafrique.com", "Niger"),
    ("NigerAnnonce", "https://nigerannonce.com", "Niger"),
    ("CoinAfriqueBF", "https://bf.coinafrique.com", "Burkina Faso"),
    ("Rodwoko", "https://rodwoko.com", "Burkina Faso"),
    ("CoinAfriqueML", "https://ml.coinafrique.com", "Mali"),
    ("Malipages", "https://www.malipages.com", "Mali"),
    ("CoinAfriqueGN", "https://gn.coinafrique.com", "Guinea"),
    ("GuineeAchat", "https://guineeachat.com", "Guinea"),
    
    # Subagent 3 (ME/Asia)
    ("Divar", "https://divar.ir", "Iran"),
    ("Sheypoor", "https://www.sheypoor.com", "Iran"),
    ("Esam", "https://esam.ir", "Iran"),
    ("Kaidee", "https://www.kaidee.com", "Thailand"),
    ("PantipMarket", "https://www.pantipmarket.com", "Thailand"),
    ("IMyanmarMarket", "https://www.imyanmarmarket.com", "Myanmar"),
    ("Myanmarkt", "https://www.myanmarkt.com", "Myanmar"),
    ("OpenSooqIraq", "https://iq.opensooq.com/en", "Iraq"),
    ("OpenSooqYemen", "https://ye.opensooq.com/en", "Yemen"),
    ("Khmer24", "https://www.khmer24.com", "Cambodia"),
    ("VestnikTM", "https://vestniktm.com", "Turkmenistan"),
    ("LalafoKG", "https://lalafo.kg", "Kyrgyzstan"),
    ("OpenSooqOman", "https://om.opensooq.com/en", "Oman"),
    ("OpenSooqBahrain", "https://bh.opensooq.com/en", "Bahrain"),
    ("TLMarket", "https://www.tlmercado.com", "Timor-Leste"),
    ("Bruneida", "https://www.bruneida.com", "Brunei"),
    ("MacauAsiaXpat", "https://macau.asiaxpat.com", "Macau")
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
    filename = f"/opt/repos/rbm_crawlers/src/genuine_reg2_{platform.lower()}_spider.py"
    with open(filename, "w") as f:
        f.write(template.format(spider_class=platform, platform=platform, base_url=url, territory=territory))

print(f"Successfully generated {len(platforms)} genuine regular spiders.")
