from html_search_spider import HTMLSearchSpider

class BookaaoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=50):
        super().__init__(
            platform_name="Bookaao",
            base_url="https://bookaao.com",
            search_path="search_results.php?q={query}",
            selectors={
                'container': 'div.product-card', 
                'title': 'h3.product-title',
                'link': 'a.product-link',
                'price': '.price-display',
            },
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = BookaaoSpider(limit_pages=1)
    spider.run()
