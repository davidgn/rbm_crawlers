from shopify_spider import ShopifyAPISpider

class HombredelamanchaPaSpider(ShopifyAPISpider):
    """
    Spider for El Hombre de la Mancha (Panama).
    The leading bookstore chain in Panama.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="El Hombre de la Mancha",
            base_url="https://hombredelamancha.com.pa",
            territory="Panama",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = HombredelamanchaPaSpider(limit_pages=1)
    spider.run()
