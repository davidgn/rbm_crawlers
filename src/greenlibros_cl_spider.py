from shopify_spider import ShopifyAPISpider

class GreenlibrosClSpider(ShopifyAPISpider):
    """
    Spider for Green Libros (Chile).
    B-Corp focused on selling donated used books.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Green Libros",
            base_url="https://www.greenlibros.com",
            territory="Chile",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = GreenlibrosClSpider(limit_pages=1)
    spider.run()
