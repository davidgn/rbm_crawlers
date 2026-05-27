from html_search_spider import HTMLSearchSpider

class MetronovaHnSpider(HTMLSearchSpider):
    """
    Spider for Librería Metro Nova (Honduras).
    Uses the PrestaShop platform.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Librería Metro Nova",
            base_url="https://metronovahn.com",
            search_path="en/search?s={query}&page={page}",
            selectors={
                'container': '.product-miniature', 
                'title': '.product-title a',
                'link': '.product-title a',
                'price': '.price',
            },
            territory="Honduras",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = MetronovaHnSpider(limit_pages=1)
    spider.run()
