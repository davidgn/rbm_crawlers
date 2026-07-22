import re
from html_search_spider import HTMLSearchSpider

class MalipagesSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Malipages", base_url="https://www.malipages.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Mali", limit_pages=limit_pages
        )

if __name__ == "__main__":
    MalipagesSpider(limit_pages=1).run()
