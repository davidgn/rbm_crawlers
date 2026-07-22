import re
from html_search_spider import HTMLSearchSpider

class XianyuSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Xianyu", base_url="https://2.taobao.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="China", limit_pages=limit_pages
        )

if __name__ == "__main__":
    XianyuSpider(limit_pages=1).run()
