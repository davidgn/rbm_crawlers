from html_search_spider import HTMLSearchSpider

class BooksnbobsMySpider(HTMLSearchSpider):
    """
    Spider for Books n Bobs (Malaysia).
    A popular destination for pre-loved books.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Books n Bobs",
            base_url="https://booksnbobs.com",
            search_path="?s={query}&post_type=product",
            selectors={
                'container': 'li.product', 
                'title': '.woocommerce-loop-product__title',
                'link': '.woocommerce-LoopProduct-link',
                'price': '.price',
                'author': '.book-author'
            },
            territory="Malaysia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = BooksnbobsMySpider(limit_pages=1)
    spider.run()
