from html_search_spider import HTMLSearchSpider

class BookFlowSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=50):
        super().__init__(
            platform_name="BookFlow",
            base_url="https://bookflow.in",
            search_path="search?q={query}&page={page}",
            selectors={
                'container': 'div.product-item, .product', 
                'title': 'h3.product-name, .title',
                'link': 'a.product-link',
                'price': '.price, .amount',
                'author': '.author'
            },
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = BookFlowSpider(limit_pages=2)
    spider.run()
