from html_search_spider import HTMLSearchSpider


class ChristianbooksZaSpider(HTMLSearchSpider):
    """
    HTML search spider for Christian Books South Africa (christianbooks.co.za) —
    Independent heritage theological and literature bookstore based in Cape Town, South Africa.
    South Africa outbound M-Bag: $9.73 USD / 5 kg to US.
    """

    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Christian Books SA",
            base_url="https://christianbooks.co.za",
            search_path="?s={query}&post_type=product",
            territory="South Africa",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="ZAR",
            selectors={
                "container": "li.product, .product, article, div.product-small",
                "title": ".woocommerce-loop-product__title, .name a, h2, h3, a",
                "link": "a[href*='/shop/'], a[href*='/product/']",
                "price": ".price, .amount",
            },
            **kwargs,
        )
        self.client.verify = False
        self.default_query = "faith"


if __name__ == "__main__":
    import logging

    logging.basicConfig(level=logging.INFO)
    spider = ChristianbooksZaSpider(limit_pages=1, limit_items=5)
    spider.run()
