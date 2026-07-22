import re
from html_search_spider import HTMLSearchSpider

class AlsougSdSpider(HTMLSearchSpider):
    """Native spider for Alsoug (Sudan)."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Alsoug_SD", base_url="https://alsoug.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Sudan", limit_pages=limit_pages
        )

if __name__ == "__main__":
    AlsougSdSpider(limit_pages=1).run()
