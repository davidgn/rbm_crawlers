from html_search_spider import HTMLSearchSpider

class BooklineHuSpider(HTMLSearchSpider):
    """
    Spider for Bookline (Hungary).
    The leading online bookstore in Hungary.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Bookline",
            base_url="https://bookline.hu",
            search_path="search/search.action?search={query}&page={page}",
            selectors={
                'container': '.o-product-card', 
                'title': '.o-product-card__title',
                'link': 'a.o-product-card__title',
                'price': '.o-product-card__price',
            },
            territory="Hungary",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = BooklineHuSpider(limit_pages=1)
    spider.run()
