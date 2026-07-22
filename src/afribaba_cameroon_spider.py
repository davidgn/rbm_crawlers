import re
from html_search_spider import HTMLSearchSpider

class AfribabaCameroonSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Afribaba", base_url="https://cm.afribaba.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Cameroon", limit_pages=limit_pages
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = AfribabaCameroonSpider(limit_pages=1)
    spider.run()
