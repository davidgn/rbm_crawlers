import re
from html_search_spider import HTMLSearchSpider

class MuabanVnSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Muaban_VN", base_url="https://muaban.net",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Vietnam", limit_pages=limit_pages
        )

if __name__ == "__main__":
    MuabanVnSpider(limit_pages=1).run()
