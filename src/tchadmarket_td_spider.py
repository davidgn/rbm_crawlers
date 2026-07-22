import re
from html_search_spider import HTMLSearchSpider


class TchadmarketTdSpider(HTMLSearchSpider):
    """Spider for Tchad Market (Chad).
    A local C2C online marketplace in Chad for buying and selling books,
    electronics, clothing, and general goods — primarily in French.
    URL: https://www.tchadmarket.com
    """

    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="TchadMarket",
            base_url="https://www.tchadmarket.com",
            search_path="ads?search={query}&page={page}",
            selectors={
                'container': 'div.listing-box',
                'title': 'h2.listing-name',
                'price': 'div.listing-price',
                'link': 'a',
            },
            territory="Chad",
            limit_pages=limit_pages,
            price_currency="XAF",
        )


if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="TchadMarket Chad C2C marketplace spider")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    spider = TchadmarketTdSpider(limit_pages=args.limit_pages)
    spider.run()
