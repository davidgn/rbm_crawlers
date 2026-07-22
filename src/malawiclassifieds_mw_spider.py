import re
from html_search_spider import HTMLSearchSpider


class MalawiclassifiedsMwSpider(HTMLSearchSpider):
    """Spider for Malawi Classifieds (Malawi).
    A dedicated local C2C classifieds site for Malawi covering books,
    electronics, furniture, and general merchandise nationwide.
    URL: https://www.malawiclassifieds.com
    """

    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="MalawiClassifieds",
            base_url="https://www.malawiclassifieds.com",
            search_path="search?keyword={query}&page={page}",
            selectors={
                'container': 'div.ad-item',
                'title': 'h2.ad-title',
                'price': 'div.ad-price',
                'link': 'a',
            },
            territory="Malawi",
            limit_pages=limit_pages,
            price_currency="MWK",
        )


if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="MalawiClassifieds C2C spider")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    spider = MalawiclassifiedsMwSpider(limit_pages=args.limit_pages)
    spider.run()
