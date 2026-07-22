import re
from html_search_spider import HTMLSearchSpider

class DjiboutiAfribabaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Afribaba_DJ", base_url="https://dj.afribaba.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Djibouti", limit_pages=limit_pages
        )

if __name__ == "__main__":
    DjiboutiAfribabaSpider(limit_pages=1).run()
