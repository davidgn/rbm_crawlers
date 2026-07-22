import re
from html_search_spider import HTMLSearchSpider

class PalestineShobiddakSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Shobiddak_PS", base_url="https://shobiddak.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Palestine", limit_pages=limit_pages
        )

if __name__ == "__main__":
    PalestineShobiddakSpider(limit_pages=1).run()
