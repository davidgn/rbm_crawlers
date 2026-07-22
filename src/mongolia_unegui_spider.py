import re
from html_search_spider import HTMLSearchSpider

class MongoliaUneguiSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Unegui_MN", base_url="https://www.unegui.mn",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Mongolia", limit_pages=limit_pages
        )

if __name__ == "__main__":
    MongoliaUneguiSpider(limit_pages=1).run()
