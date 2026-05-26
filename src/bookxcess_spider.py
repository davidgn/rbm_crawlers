from shopify_spider import ShopifyAPISpider

class BookxcessSpider(ShopifyAPISpider):
    """
    Spider for BookXcess (Malaysia).
    Known for highly discounted remainder books and creative store designs.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="BookXcess",
            base_url="https://www.bookxcess.com",
            territory="Malaysia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = BookxcessSpider(limit_pages=1)
    spider.run()
