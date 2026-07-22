import re
from html_search_spider import HTMLSearchSpider

class PostFreeOnlineSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="PostFreeOnline", base_url="https://postfreeonline.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="India", limit_pages=limit_pages
        )

if __name__ == "__main__":
    PostFreeOnlineSpider(limit_pages=1).run()
