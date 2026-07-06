from html_search_spider import HTMLSearchSpider

class BookshopUySpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Bookshop_UY", base_url="https://www.bookshop.com.uy",
            search_path="catalogsearch/result/?q={search_term}",
            selectors={
                'container': 'li.product-item',
                'title': '.product-item-link',
                'price': '.price'
            },
            price_currency="UYU",
            territory="Uruguay", limit_pages=limit_pages
        )

if __name__ == "__main__":
    import os
    os.environ["RBM_SEARCH_TERM"] = "libro"
    BookshopUySpider(limit_pages=1).run()
