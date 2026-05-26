from html_search_spider import HTMLSearchSpider

class VinabookVnSpider(HTMLSearchSpider):
    """
    Spider for Vinabook (Vietnam).
    One of the oldest and most dedicated online bookstores in Vietnam.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Vinabook",
            base_url="https://www.vinabook.com",
            search_path="search?q={query}&type=product&page={page}",
            selectors={
                'container': '.product-item', 
                'title': 'h3',
                'link': 'a',
                'price': '.price-new',
            },
            territory="Vietnam",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = VinabookVnSpider(limit_pages=1)
    spider.run()
