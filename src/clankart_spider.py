from html_search_spider import HTMLSearchSpider

class ClankartSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=50):
        super().__init__(
            platform_name="Clankart",
            base_url="https://www.clankart.com",
            search_path="search?q={query}&page={page}",
            selectors={
                'container': 'div.adv-card', 
                'title': 'h3.item-heading',
                'link': 'a.title',
                'price': '.text-success', # Can adjust later if needed
            },
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = ClankartSpider(limit_pages=2)
    spider.run()
