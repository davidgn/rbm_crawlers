from playwright_search_spider import PlaywrightSearchSpider

class BookaaoSpider(PlaywrightSearchSpider):
    def __init__(self, limit_pages=50):
        super().__init__(
            platform_name="Bookaao",
            base_url="https://bookaao.com",
            search_path="search_results.php?q={query}",
            selectors={
                'container': 'div.product-card, .col-md-3, .item', 
                'title': 'h4, .product-name',
                'link': 'a',
                'price': '.price',
            },
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = BookaaoSpider(limit_pages=1)
    spider.run()
