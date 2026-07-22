import re
from html_search_spider import HTMLSearchSpider

class SeychellesAfribabaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Afribaba_SC", base_url="https://sc.afribaba.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Seychelles", limit_pages=limit_pages
        )

if __name__ == "__main__":
    SeychellesAfribabaSpider(limit_pages=1).run()
