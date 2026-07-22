import re
from html_search_spider import HTMLSearchSpider

class QuokkaAuSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Quokka_AU", base_url="https://quokka.com.au",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Australia", limit_pages=limit_pages
        )

if __name__ == "__main__":
    QuokkaAuSpider(limit_pages=1).run()
