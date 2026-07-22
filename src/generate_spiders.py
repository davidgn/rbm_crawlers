import os

spider_template = """from html_search_spider import HTMLSearchSpider

class {class_name}(HTMLSearchSpider):
    \"\"\"Native spider for {platform_name} ({territory}).\"\"\"
    def __init__(self, limit_pages=10, **kwargs):
        super().__init__(
            platform_name="{platform_name}",
            base_url="{base_url}",
            search_path="{search_path}",
            selectors={{'container': 'div.item', 'title': 'h3', 'price': '.price'}},
            territory="{territory}",
            limit_pages=limit_pages,
            **kwargs
        )

if __name__ == "__main__":
    spider = {class_name}()
    spider.run()
"""

platforms = [
    ("fb_marketplace_mx", "FbMarketplaceMxSpider", "Facebook Marketplace", "https://www.facebook.com/marketplace", "search/?query={query}", "Mexico"),
    ("mercadolibre_mx", "MercadolibreMxSpider", "Mercado Libre", "https://listado.mercadolibre.com.mx", "{query}", "Mexico"),
    ("clasf_mx", "ClasfMxSpider", "Clasf Mexico", "https://www.clasf.mx", "q/{query}", "Mexico"),
    ("gotrendier_mx", "GotrendierMxSpider", "GoTrendier", "https://www.gotrendier.mx", "search?q={query}", "Mexico"),
    ("kavak_mx", "KavakMxSpider", "Kavak", "https://www.kavak.com/mx", "compra-de-autos?q={query}", "Mexico"),
    ("seminuevos_mx", "SeminuevosMxSpider", "Seminuevos", "https://www.seminuevos.com", "vehiculos?q={query}", "Mexico"),
    ("bazar_e_mx", "BazarEMxSpider", "Bazar-E", "https://bazar-e.mx", "search?q={query}", "Mexico"),
    ("yahoo_auctions_japan", "YahooAuctionsJapanSpider", "Yahoo! Auctions", "https://auctions.yahoo.co.jp", "search/search?p={query}", "Japan"),
    ("jimoty_japan", "JimotyJapanSpider", "Jimoty", "https://jmty.jp", "all/search?keyword={query}", "Japan"),
    ("yahoo_furima_japan", "YahooFurimaJapanSpider", "Yahoo! Furima", "https://paypayfleamarket.yahoo.co.jp", "search/{query}", "Japan"),
    ("second_street_japan", "SecondStreetJapanSpider", "2nd Street", "https://www.2ndstreet.jp", "search?keyword={query}", "Japan"),
    ("hard_off_japan", "HardOffJapanSpider", "Hard Off", "https://netmall.hardoff.co.jp", "search/?q={query}", "Japan"),
    ("mobaoku_japan", "MobaokuJapanSpider", "Mobaoku", "https://www.mbok.jp", "search?q={query}", "Japan"),
    ("minne_japan", "MinneJapanSpider", "Minne", "https://minne.com", "items?q={query}", "Japan")
]

for name, cls_name, plat_name, base_url, search_path, terr in platforms:
    filename = f"/opt/repos/rbm_crawlers/src/{name}_spider.py"
    with open(filename, 'w') as f:
        f.write(spider_template.format(
            class_name=cls_name,
            platform_name=plat_name,
            base_url=base_url,
            search_path=search_path,
            territory=terr
        ))

print("Created 14 spider files.")
