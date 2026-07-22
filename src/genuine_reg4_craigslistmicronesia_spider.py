import re
from html_search_spider import HTMLSearchSpider

class CraigslistMicronesiaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="CraigslistMicronesia", base_url="https://micronesia.craigslist.org",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Micronesia", limit_pages=limit_pages
        )

if __name__ == "__main__":
    CraigslistMicronesiaSpider(limit_pages=1).run()
