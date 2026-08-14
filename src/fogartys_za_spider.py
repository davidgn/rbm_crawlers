from html_search_spider import HTMLSearchSpider


class FogartysZaSpider(HTMLSearchSpider):
    """
    HTML search spider for Fogarty's Bookshop South Africa (fogartysbookshop.co.za) —
    Historic independent bookstore in Gqeberha (Port Elizabeth), South Africa (founded 1946).
    South Africa outbound M-Bag: $9.73 USD / 5 kg to US.
    """

    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Fogarty's Bookshop",
            base_url="https://fogartysbookshop.co.za",
            search_path="?s={query}&post_type=product",
            territory="South Africa",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="ZAR",
            selectors={
                "container": "li.product, .product, article",
                "title": "h2.woocommerce-loop-product__title, h2, h3, a",
                "link": "a[href*='/product/']",
                "price": ".price, .amount",
            },
            **kwargs,
        )
        self.client.verify = False


if __name__ == "__main__":
    import logging

    logging.basicConfig(level=logging.INFO)
    spider = FogartysZaSpider(limit_pages=1, limit_items=5)
    spider.run()
