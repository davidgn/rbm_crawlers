from html_search_spider import HTMLSearchSpider

class BegglireSnSpider(HTMLSearchSpider):
    """
    Spider for Bëgg Lire (Senegal).
    A popular bookstore in Dakar for new and used books.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Bëgg Lire",
            base_url="https://begglire.com",
            search_path="search?q={query}",
            selectors={
                'container': '.book__card', 
                'title': '.book__card-title',
                'link': 'a',
                'price': '.book__card-desc', # Usually contains price or status
            },
            territory="Senegal",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = BegglireSnSpider(limit_pages=1)
    spider.run()
