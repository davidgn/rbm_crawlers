from playwright_search_spider import PlaywrightSearchSpider

class RofoofSpider(PlaywrightSearchSpider):
    """
    Spider for Rofoof (Saudi Arabia).
    Requires Playwright due to aggressive WAF/rendering.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Rofoof",
            base_url="https://rofoof.com",
            search_path="search?q={query}&page={page}",
            selectors={
                'container': '.s-product-card, .product-card', 
                'title': '.s-product-card-title, .title',
                'link': 'a',
                'price': '.s-product-card-price, .price',
            },
            limit_pages=limit_pages
        )
        self.territory = "Saudi Arabia"

if __name__ == "__main__":
    spider = RofoofSpider(limit_pages=1)
    spider.run()
