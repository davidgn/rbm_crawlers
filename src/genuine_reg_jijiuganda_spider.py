import re
from html_search_spider import HTMLSearchSpider

class JijiUgandaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="JijiUganda", base_url="https://jiji.ug",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Uganda", limit_pages=limit_pages
        )

if __name__ == "__main__":
    JijiUgandaSpider(limit_pages=1).run()
