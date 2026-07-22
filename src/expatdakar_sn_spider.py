import re
from html_search_spider import HTMLSearchSpider


class ExpatdakarSnSpider(HTMLSearchSpider):
    """Spider for Expat Dakar (Senegal).
    A popular general classifieds site serving Dakar and all of Senegal,
    with categories for books, household goods, electronics, and services.
    URL: https://www.expatdakar.com
    """

    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="ExpatDakar",
            base_url="https://www.expatdakar.com",
            search_path="ads/search?q={query}&p={page}",
            selectors={
                'container': 'div.classified-item',
                'title': 'h2.ad-title',
                'price': 'p.ad-price',
                'link': 'a.ad-link',
            },
            territory="Senegal",
            limit_pages=limit_pages,
            price_currency="XOF",
        )


if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="ExpatDakar Senegal classifieds spider")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    spider = ExpatdakarSnSpider(limit_pages=args.limit_pages)
    spider.run()
