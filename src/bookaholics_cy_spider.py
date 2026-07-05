from html_search_spider import HTMLSearchSpider

class BookaholicsCySpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Bookaholics_CY", base_url="https://bookaholicsshop.com",
            search_path="en/search?q={search_term}",
            selectors={
                'container': 'li.grid__item',
                'title': 'h3.card__heading',
                'price': '.price-item--regular'
            },
            price_currency="EUR",
            territory="Cyprus", limit_pages=limit_pages
        )

if __name__ == "__main__":
    import os
    os.environ["RBM_SEARCH_TERM"] = "novel"
    BookaholicsCySpider(limit_pages=1).run()
