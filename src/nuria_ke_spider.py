from html_search_spider import HTMLSearchSpider

class NuriaKeSpider(HTMLSearchSpider):
    """
    Spider for Nuria Store (Kenya).
    Uses modern WordPress block-based query results.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Nuria Store",
            base_url="https://nuriastore.com",
            search_path="?s={query}",
            selectors={
                'container': 'li.wp-block-post', 
                'title': 'h2.wp-block-post-title a',
                'link': 'h2.wp-block-post-title a',
                'price': '.wc-block-grid__product-price', # Guessing common block price class
            },
            territory="Kenya",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = NuriaKeSpider(limit_pages=1)
    spider.run()
