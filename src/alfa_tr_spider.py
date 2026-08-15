from html_search_spider import HTMLSearchSpider


class AlfaTrSpider(HTMLSearchSpider):
    """
    HTML search spider for Alfa Kitap Turkey (alfakitap.com) —
    Leading Turkish publisher and bookstore specializing in science, philosophy, history, and literature.
    Turkey outbound M-Bag: $11.50 USD / 5 kg to US.
    """

    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Alfa Kitap",
            base_url="https://www.alfakitap.com",
            search_path="index.php?route=product/search&search={query}",
            territory="Turkey",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="TRY",
            selectors={
                "container": ".item",
                "title": "img",
                "link": "a[href*='/catalog/product/view/']",
                "price": ".product__item__price__last, [class*='price__last'], .price, [class*='price']",
            },
            **kwargs,
        )
        self.client.verify = False
        self.default_query = "felsefe"


if __name__ == "__main__":
    import logging

    logging.basicConfig(level=logging.INFO)
    spider = AlfaTrSpider(limit_pages=1, limit_items=5)
    spider.run()
