import re
from html_search_spider import HTMLSearchSpider

class TheAdvertiserBotswanaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="TheAdvertiserBotswana", base_url="https://theadvertiser.co.bw",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Botswana", limit_pages=limit_pages
        )

if __name__ == "__main__":
    TheAdvertiserBotswanaSpider(limit_pages=1).run()
