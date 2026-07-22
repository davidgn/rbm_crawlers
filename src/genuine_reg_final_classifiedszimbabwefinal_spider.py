import re
from html_search_spider import HTMLSearchSpider

class ClassifiedsZimbabweFinalSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="ClassifiedsZimbabweFinal", base_url="https://www.classifieds.co.zw",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Zimbabwe", limit_pages=limit_pages
        )

if __name__ == "__main__":
    ClassifiedsZimbabweFinalSpider(limit_pages=1).run()
