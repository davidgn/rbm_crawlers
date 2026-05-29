from html_search_spider import HTMLSearchSpider

class VinabookVnSpider(HTMLSearchSpider):
    """
    Spider for Vinabook (Vietnam).
    One of the oldest and most trusted online bookstores in Vietnam.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Vinabook",
            base_url="https://www.vinabook.com",
            search_path="search?q={query}&page={page}",
            selectors={
                'container': '.product-detail', 
                'title': '.product-title',
                'link': 'a',
                'price': '.product-price',
            },
            territory="Vietnam",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = VinabookVnSpider(limit_pages=1)
    spider.run()
