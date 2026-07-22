import re
from html_search_spider import HTMLSearchSpider

class AfribabaBurundiFinalSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="AfribabaBurundiFinal", base_url="https://bi.afribaba.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Burundi", limit_pages=limit_pages
        )

if __name__ == "__main__":
    AfribabaBurundiFinalSpider(limit_pages=1).run()
