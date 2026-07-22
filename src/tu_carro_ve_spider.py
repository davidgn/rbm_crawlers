import re
from html_search_spider import HTMLSearchSpider

class TuCarroVeSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="TuCarro_VE", base_url="https://carros.tucarro.com.ve",
            search_path="{search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Venezuela", limit_pages=limit_pages
        )

if __name__ == "__main__":
    TuCarroVeSpider(limit_pages=1).run()
