import re
from html_search_spider import HTMLSearchSpider

class MediaCongoNetSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="MediaCongoNet", base_url="https://www.mediacongo.net",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="DR Congo", limit_pages=limit_pages
        )

if __name__ == "__main__":
    MediaCongoNetSpider(limit_pages=1).run()
