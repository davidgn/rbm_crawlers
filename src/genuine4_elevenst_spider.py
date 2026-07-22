import re
from html_search_spider import HTMLSearchSpider

class ElevenStSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="ElevenSt", base_url="https://www.11st.co.kr",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="South Korea", limit_pages=limit_pages
        )

if __name__ == "__main__":
    ElevenStSpider(limit_pages=1).run()
