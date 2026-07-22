import re
from html_search_spider import HTMLSearchSpider

class CubaPorlalivreSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="PorLaLivre_CU", base_url="https://porlalivre.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Cuba", limit_pages=limit_pages
        )

if __name__ == "__main__":
    CubaPorlalivreSpider(limit_pages=1).run()
