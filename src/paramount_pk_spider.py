from html_search_spider import HTMLSearchSpider


class ParamountPkSpider(HTMLSearchSpider):
    """
    HTML search spider for Paramount Books Pakistan (paramountbooks.com.pk) —
    Leading publisher and distributor of medical, academic, children's, and general books in Pakistan.
    Pakistan outbound M-Bag: $18.50 USD / 5 kg to US.
    """

    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Paramount Books Pakistan",
            base_url="https://www.paramountbooks.com.pk",
            search_path="search?q={query}&type=product",
            territory="Pakistan",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="PKR",
            selectors={
                "container": "li.grid-item",
                "title": "p.item-title",
                "link": "a[href*='/products/']",
                "price": "span.price",
            },
            **kwargs,
        )


if __name__ == "__main__":
    import logging

    logging.basicConfig(level=logging.INFO)
    spider = ParamountPkSpider(limit_pages=1, limit_items=5)
    spider.run()
