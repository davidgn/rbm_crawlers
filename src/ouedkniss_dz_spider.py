import re
from html_search_spider import HTMLSearchSpider

class OuedknissDzSpider(HTMLSearchSpider):
    """Native spider for Ouedkniss (Algeria)."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Ouedkniss_DZ", base_url="https://www.ouedkniss.com",
            search_path="recherche?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Algeria", limit_pages=limit_pages
        )

if __name__ == "__main__":
    OuedknissDzSpider(limit_pages=1).run()
