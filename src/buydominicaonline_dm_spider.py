from html_search_spider import HTMLSearchSpider

class BuyDominicaOnlineSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="BuyDominicaOnline_DM", base_url="https://buydominicaonline.com",
            search_path="search?q={search_term}",
            selectors={
                'container': '.grid__item',
                'title': '.card__heading',
                'price': '.price-item--regular'
            },
            price_currency="USD",
            territory="Dominica", limit_pages=limit_pages
        )

if __name__ == "__main__":
    import os
    os.environ["RBM_SEARCH_TERM"] = "book"
    BuyDominicaOnlineSpider(limit_pages=1).run()
