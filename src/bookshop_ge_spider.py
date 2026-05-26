from html_search_spider import HTMLSearchSpider

class BookshopGeSpider(HTMLSearchSpider):
    """
    Spider for Bookshop.ge (Georgia).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Bookshop.ge",
            base_url="https://bookshop.ge",
            search_path="product/search?search_str={query}",
            selectors={
                'container': 'div.product-body', 
                'title': '.card-title',
                'link': 'a',
                'price': '.price',
                'author': '.author'
            },
            territory="Georgia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = BookshopGeSpider(limit_pages=1)
    spider.run()
