from html_search_spider import HTMLSearchSpider

class FceGtSpider(HTMLSearchSpider):
    """
    Spider for Librería del FCE Guatemala.
    Uses a standard WordPress search.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Librería del FCE Guatemala",
            base_url="https://fceguatemalaenlinea.com",
            search_path="?s={query}",
            selectors={
                'container': 'article, .et_pb_post', 
                'title': 'h2, h3',
                'link': 'a',
                'price': '.price',
            },
            territory="Guatemala",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = FceGtSpider(limit_pages=1)
    spider.run()
