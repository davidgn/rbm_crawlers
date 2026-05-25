from html_search_spider import HTMLSearchSpider

class ChunghwaHkSpider(HTMLSearchSpider):
    """
    Spider for Chung Hwa Book Co (Hong Kong).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Chung Hwa",
            base_url="https://www.chunghwabook.com.hk",
            search_path="search?keyword={query}&page={page}",
            selectors={
                'container': 'div.col-3', 
                'title': 'p.title',
                'link': 'p.title',
                'price': '.price',
            },
            territory="Hong Kong",
            limit_pages=limit_pages
        )
        self.client.verify = False # Bypass SSL issue

if __name__ == "__main__":
    spider = ChunghwaHkSpider(limit_pages=1)
    spider.run()
