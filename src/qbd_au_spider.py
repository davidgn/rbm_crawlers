from html_search_spider import HTMLSearchSpider

class QbdAuSpider(HTMLSearchSpider):
    """
    Spider for QBD Books (Australia).
    A major national chain with a strong online presence.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="QBD Books",
            base_url="https://www.qbd.com.au",
            search_path="search/?q={query}&page={page}",
            selectors={
                'container': '.q2k21pt', 
                'title': '.q2k21ptdt a',
                'link': '.q2k21ptdt a',
                'price': '.q2k21ptspr span',
                'author': '.q2k21ptda a'
            },
            territory="Australia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = QbdAuSpider(limit_pages=1)
    spider.run()
