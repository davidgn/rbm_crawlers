import re
from html_search_spider import HTMLSearchSpider


class HargeisaonlineSoSpider(HTMLSearchSpider):
    """Spider for Hargeisa Online Classifieds (Somalia).
    A regional classifieds platform serving Hargeisa and greater Somaliland,
    with listings for books, household goods, electronics, and general items.
    URL: https://www.hargeisaonline.com
    """

    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="HargeisaOnline",
            base_url="https://www.hargeisaonline.com",
            search_path="classifieds/search?keyword={query}&page={page}",
            selectors={
                'container': 'div.classified-ad',
                'title': 'h2.ad-heading',
                'price': 'span.ad-price',
                'link': 'a.ad-title-link',
            },
            territory="Somalia",
            limit_pages=limit_pages,
            price_currency="USD",
        )


if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="HargeisaOnline Somalia classifieds spider")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    spider = HargeisaonlineSoSpider(limit_pages=args.limit_pages)
    spider.run()
