import re
from html_search_spider import HTMLSearchSpider

class Encuentra24ElSalvadorSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Encuentra24ElSalvador", base_url="https://www.encuentra24.com/el-salvador-es",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="El Salvador", limit_pages=limit_pages
        )

if __name__ == "__main__":
    Encuentra24ElSalvadorSpider(limit_pages=1).run()
