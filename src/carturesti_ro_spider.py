from playwright_search_spider import PlaywrightSearchSpider

class CarturestiRoSpider(PlaywrightSearchSpider):
    """
    Spider for Cărturești (Romania).
    Uses Playwright for AngularJS rendering.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Carturesti",
            base_url="https://carturesti.ro",
            search_path="product/search/{query}",
            selectors={
                'container': '.product-grid-item', 
                'title': '.product-title',
                'link': 'a',
                'price': '.product-price',
            },
            territory="Romania",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = CarturestiRoSpider(limit_pages=1)
    spider.run()
