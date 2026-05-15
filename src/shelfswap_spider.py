from shopify_spider import ShopifyAPISpider

class ShelfSwapSpider(ShopifyAPISpider):
    def __init__(self, limit_pages=10):
        super().__init__(
            platform_name="ShelfSwap",
            base_url="https://shelfswap.com",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = ShelfSwapSpider(limit_pages=1)
    spider.run()
