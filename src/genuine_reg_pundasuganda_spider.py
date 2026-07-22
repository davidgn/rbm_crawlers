import re
from html_search_spider import HTMLSearchSpider

class PundasUgandaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="PundasUganda", base_url="https://pundas.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Uganda", limit_pages=limit_pages
        )

if __name__ == "__main__":
    PundasUgandaSpider(limit_pages=1).run()
