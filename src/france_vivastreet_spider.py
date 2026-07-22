import re
from html_search_spider import HTMLSearchSpider

class FranceVivastreetSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Vivastreet_FR", base_url="https://www.vivastreet.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="France", limit_pages=limit_pages
        )

if __name__ == "__main__":
    FranceVivastreetSpider(limit_pages=1).run()
