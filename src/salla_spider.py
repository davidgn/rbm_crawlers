from html_search_spider import HTMLSearchSpider

class SallaSearchSpider(HTMLSearchSpider):
    """
    A generic spider for Salla-based stores (Saudi Arabia).
    """
    def __init__(self, platform_name: str, base_url: str, territory: str = "Saudi Arabia", limit_pages: int = 50):
        super().__init__(
            platform_name=platform_name,
            base_url=base_url,
            search_path="search?q={query}",
            selectors={
                'container': '.s-product-card, .product-card', 
                'title': '.s-product-card-title, .title',
                'link': 'a',
                'price': '.s-product-card-price, .price',
            },
            limit_pages=limit_pages
        )
        self.territory = territory

if __name__ == "__main__":
    # Test with Bookccino
    spider = SallaSearchSpider("Bookccino", "https://bookccino.com", limit_pages=1)
    spider.run()
