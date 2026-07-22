import re
from html_search_spider import HTMLSearchSpider

class YawaayeDjiboutiSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="YawaayeDjibouti", base_url="https://yawaaye.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Djibouti", limit_pages=limit_pages
        )

if __name__ == "__main__":
    YawaayeDjiboutiSpider(limit_pages=1).run()
