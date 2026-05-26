from html_search_spider import HTMLSearchSpider

class TrhKnihSpider(HTMLSearchSpider):
    """
    Spider for TrhKnih (Czechia).
    Peer-to-peer marketplace for used books.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="TrhKnih",
            base_url="https://www.trhknih.cz",
            search_path="hledat?q={query}",
            selectors={
                'container': '.serp-item', 
                'title': 'a',
                'link': 'a',
                'price': '.price', # Best guess, need verify
            },
            territory="Czechia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = TrhKnihSpider(limit_pages=1)
    spider.run()
