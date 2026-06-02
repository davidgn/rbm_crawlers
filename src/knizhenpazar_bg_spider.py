from html_search_spider import HTMLSearchSpider

class KnizhenPazarBgSpider(HTMLSearchSpider):
    """
    Spider for Knizhen Pazar (Bulgaria).
    A leading online marketplace for books in Bulgaria.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Knizhen Pazar",
            base_url="https://knizhen-pazar.net",
            search_path="index.php?option=search&q={query}&page={page}",
            selectors={
                'container': '.book_item', # Guessing based on common patterns
                'title': '.book_title',
                'link': 'a',
                'price': '.price',
            },
            territory="Bulgaria",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = KnizhenPazarBgSpider(limit_pages=1)
    spider.run()
