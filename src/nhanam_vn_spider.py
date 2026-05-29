from html_search_spider import HTMLSearchSpider

class NhanamVnSpider(HTMLSearchSpider):
    """
    Spider for Nhã Nam (Vietnam).
    A high-quality literature publisher and bookstore.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Nhã Nam",
            base_url="https://nhanam.vn",
            search_path="search?q={query}&page={page}",
            selectors={
                'container': '.product-item', 
                'title': '.product-title',
                'link': 'a',
                'price': '.product-price',
            },
            territory="Vietnam",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = NhanamVnSpider(limit_pages=1)
    spider.run()
