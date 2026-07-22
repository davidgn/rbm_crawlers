import re
from html_search_spider import HTMLSearchSpider

class AdlandproSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Adlandpro", base_url="https://www.adlandpro.com",
            search_path="search.aspx?q={search_term}",
            selectors={'container': 'div.ad', 'title': 'a.title', 'price': '.price'},
            territory="United States", limit_pages=limit_pages
        )

if __name__ == "__main__":
    AdlandproSpider(limit_pages=1).run()
