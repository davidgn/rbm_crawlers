from shopify_spider import ShopifyAPISpider

class WebookClSpider(ShopifyAPISpider):
    """
    Spider for WeBook (Chile).
    Focuses on print-on-demand and independent authors.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="WeBook",
            base_url="https://www.webook.cl",
            territory="Chile",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = WebookClSpider(limit_pages=1)
    spider.run()
