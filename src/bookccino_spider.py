from playwright_search_spider import PlaywrightSearchSpider

class BookccinoSpider(PlaywrightSearchSpider):
    """
    Spider for Bookccino (Saudi Arabia).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Bookccino",
            base_url="https://bookccino.com",
            search_path="search?q={query}&page={page}",
            selectors={
                'container': '.s-product-card, .product-card', 
                'title': '.s-product-card-title, .title',
                'link': 'a',
                'price': '.s-product-card-price, .price',
            },
            territory="Saudi Arabia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = BookccinoSpider(limit_pages=1)
    spider.run()
