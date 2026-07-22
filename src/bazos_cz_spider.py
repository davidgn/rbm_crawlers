import re
from html_search_spider import HTMLSearchSpider

class BazosCzSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Bazos_CZ", base_url="https://www.bazos.cz",
            search_path="search.php?hledat={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Czech Republic", limit_pages=limit_pages
        )

if __name__ == "__main__":
    BazosCzSpider(limit_pages=1).run()
