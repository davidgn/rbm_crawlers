from html_search_spider import HTMLSearchSpider

class BhinnekaIdSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="bhinneka_id", base_url="https://www.bhinneka.com",
            search_path="search?q={query}",
            selectors={'container': 'div.product-card', 'title': 'div.product-title', 'price': 'div.product-price', 'link': 'a'}, territory="Indonesia", limit_pages=limit_pages
        )

if __name__ == "__main__":
    BhinnekaIdSpider(limit_pages=1).run()
