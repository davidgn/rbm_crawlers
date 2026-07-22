import re
from html_search_spider import HTMLSearchSpider

class HyperinzerceCzSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Hyperinzerce_CZ", base_url="https://www.hyperinzerce.cz",
            search_path="inzerce/{search_term}",
            selectors={'container': 'div.inz-box', 'title': 'h2.inz-title', 'price': 'span.inz-price'},
            territory="Czech Republic", limit_pages=limit_pages
        )

if __name__ == "__main__":
    HyperinzerceCzSpider(limit_pages=1).run()
