import os

spiders = [
    # US (21)
    ("craigslist_us", "Craigslist_US", "https://craigslist.org", "United States"),
    ("ebay_us", "eBay_US", "https://ebay.com", "United States"),
    ("offerup_us", "OfferUp_US", "https://offerup.com", "United States"),
    ("mercari_us", "Mercari_US", "https://mercari.com", "United States"),
    ("poshmark_us", "Poshmark_US", "https://poshmark.com", "United States"),
    ("nextdoor_us", "Nextdoor_US", "https://nextdoor.com", "United States"),
    ("bookoo_us", "Bookoo_US", "https://bookoo.com", "United States"),
    ("ksl_us", "KSL_US", "https://classifieds.ksl.com", "United States"),
    ("oodle_us", "Oodle_US", "https://oodle.com", "United States"),
    ("varagesale_us", "VarageSale_US", "https://varagesale.com", "United States"),
    ("swappa_us", "Swappa_US", "https://swappa.com", "United States"),
    ("5miles_us", "5miles_US", "https://5miles.com", "United States"),
    ("trashnothing_us", "TrashNothing_US", "https://trashnothing.com", "United States"),
    ("freecycle_us", "Freecycle_US", "https://freecycle.org", "United States"),
    ("geebo_us", "Geebo_US", "https://geebo.com", "United States"),
    ("hoobly_us", "Hoobly_US", "https://hoobly.com", "United States"),
    ("locanto_us", "Locanto_US", "https://locanto.com", "United States"),
    ("classifiedads_us", "ClassifiedAds_US", "https://classifiedads.com", "United States"),
    ("sell_us", "Sell_US", "https://sell.com", "United States"),
    ("pennysaver_us", "PennySaver_US", "https://pennysaverusa.com", "United States"),
    ("adpost_us", "Adpost_US", "https://adpost.com", "United States"),
    
    # CA (9)
    ("kijiji_ca", "Kijiji_CA", "https://kijiji.ca", "Canada"),
    ("lespac_ca", "LesPAC_CA", "https://lespac.com", "Canada"),
    ("used_ca", "Used_CA", "https://used.ca", "Canada"),
    ("townpost_ca", "Townpost_CA", "https://townpost.ca", "Canada"),
    ("locanto_ca", "Locanto_CA", "https://locanto.ca", "Canada"),
    ("oodle_ca", "Oodle_CA", "https://canada.oodle.com", "Canada"),
    ("freeadstime_ca", "FreeAdsTime_CA", "https://freeadstime.org", "Canada"),
    ("adpost_ca", "Adpost_CA", "https://adpost.com", "Canada"),
    ("varagesale_ca", "VarageSale_CA", "https://varagesale.com", "Canada"),
    
    # AU (8)
    ("gumtree_au", "Gumtree_AU", "https://gumtree.com.au", "Australia"),
    ("tradingpost_au", "TradingPost_AU", "https://tradingpost.com.au", "Australia"),
    ("locanto_au", "Locanto_AU", "https://locanto.com.au", "Australia"),
    ("oodle_au", "Oodle_AU", "https://australia.oodle.com", "Australia"),
    ("adpost_au", "Adpost_AU", "https://adpost.com", "Australia"),
    ("freeadstime_au", "FreeAdsTime_AU", "https://freeadstime.org", "Australia"),
    ("quokka_au", "Quokka_AU", "https://quokka.com.au", "Australia"),
    ("truelocal_au", "TrueLocal_AU", "https://truelocal.com.au", "Australia"),
]

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

print(f"Successfully generated {len(spiders)} genuine spiders.")
