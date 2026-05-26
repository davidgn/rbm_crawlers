from playwright_search_spider import PlaywrightSearchSpider

class RaamatukoiEeSpider(PlaywrightSearchSpider):
    """
    Spider for Raamatukoi (Estonia).
    Renowned Estonian antiquarian and new bookstore.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Raamatukoi",
            base_url="https://www.raamatukoi.ee",
            search_path="search?q={query}",
            selectors={
                'container': 'div[class*="item"]', 
                'title': 'h3',
                'link': 'a',
                'price': '.price',
            },
            territory="Estonia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = RaamatukoiEeSpider(limit_pages=1)
    spider.run()
