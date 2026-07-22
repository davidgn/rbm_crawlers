import re
from html_search_spider import HTMLSearchSpider

class AfribabaNigerFinalSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="AfribabaNigerFinal", base_url="https://ne.afribaba.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Niger", limit_pages=limit_pages
        )

if __name__ == "__main__":
    AfribabaNigerFinalSpider(limit_pages=1).run()
