import re
from html_search_spider import HTMLSearchSpider

class QatarQatarLivingSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="QatarLiving_QA", base_url="https://www.qatarliving.com/classifieds",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Qatar", limit_pages=limit_pages
        )

if __name__ == "__main__":
    QatarQatarLivingSpider(limit_pages=1).run()
