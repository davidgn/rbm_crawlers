import re
from html_search_spider import HTMLSearchSpider

class SenegalExpatDakarSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Expat_Dakar_SN", base_url="https://www.expat-dakar.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Senegal", limit_pages=limit_pages
        )

if __name__ == "__main__":
    SenegalExpatDakarSpider(limit_pages=1).run()
