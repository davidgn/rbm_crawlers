import re
from html_search_spider import HTMLSearchSpider

class IrelandDonedealSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="DoneDeal_IE", base_url="https://www.donedeal.ie",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Ireland", limit_pages=limit_pages
        )

if __name__ == "__main__":
    IrelandDonedealSpider(limit_pages=1).run()
