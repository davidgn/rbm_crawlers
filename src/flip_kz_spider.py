from html_search_spider import HTMLSearchSpider

class FlipKzSpider(HTMLSearchSpider):
    """
    Spider for Flip.kz (Kazakhstan).
    One of the largest marketplaces in Kazakhstan.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Flip",
            base_url="https://www.flip.kz",
            search_path="catalog?search={query}&page={page}",
            selectors={
                'container': '.new-product', 
                'title': '.title',
                'link': 'a',
                'price': '.price',
            },
            limit_pages=limit_pages
        )
        self.territory = "Kazakhstan"

if __name__ == "__main__":
    spider = FlipKzSpider(limit_pages=1)
    spider.run()
