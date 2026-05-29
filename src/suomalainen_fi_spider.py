from shopify_spider import ShopifyAPISpider

class SuomalainenFiSpider(ShopifyAPISpider):
    """
    Spider for Suomalainen Kirjakauppa (Finland).
    Uses the Shopify API for high-fidelity data.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Suomalainen",
            base_url="https://www.suomalainen.com",
            territory="Finland",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = SuomalainenFiSpider(limit_pages=1)
    spider.run()
