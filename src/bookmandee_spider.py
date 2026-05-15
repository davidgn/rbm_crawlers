from html_search_spider import HTMLSearchSpider

class BookMandeeSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=50):
        super().__init__(
            platform_name="BookMandee",
            base_url="https://bookmandee.com",
            search_path="?s={query}",
            selectors={
                'container': 'article.listing-item', 
                'title': 'h2.post-title a',
                'link': 'h2.post-title a',
                'price': '.entry-summary', # Will extract numeric value from text
            },
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = BookMandeeSpider(limit_pages=2)
    spider.run()
