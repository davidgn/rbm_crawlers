import re
from html_search_spider import HTMLSearchSpider

class XiaohongshuSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Xiaohongshu", base_url="https://www.xiaohongshu.com",
            search_path="search_result/?keyword={search_term}",
            selectors={'container': 'section.note-item', 'title': 'h3.name', 'price': '.price-tag'},
            territory="China", limit_pages=limit_pages
        )

if __name__ == "__main__":
    XiaohongshuSpider(limit_pages=1).run()
