import re
from html_search_spider import HTMLSearchSpider

class LibyaAfribabaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Afribaba_LY", base_url="https://ly.afribaba.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Libya", limit_pages=limit_pages
        )

if __name__ == "__main__":
    LibyaAfribabaSpider(limit_pages=1).run()
