import re
from html_search_spider import HTMLSearchSpider

class PlusvaliaEcSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Plusvalia_EC", base_url="https://www.plusvalia.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Ecuador", limit_pages=limit_pages
        )

if __name__ == "__main__":
    PlusvaliaEcSpider(limit_pages=1).run()
