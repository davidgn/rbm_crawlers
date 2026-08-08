from html_search_spider import HTMLSearchSpider


class VanguardPkSpider(HTMLSearchSpider):
    """
    HTML search spider for Vanguard Books Pakistan (vanguardbooks.com) —
    Premier independent publisher and bookstore chain in Lahore/Karachi/Islamabad, Pakistan, specializing in academic research, history, politics, and literature.
    Pakistan outbound M-Bag: $18.50 USD / 5 kg to US.
    """

    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Vanguard Books Pakistan",
            base_url="https://vanguardbooks.com",
            search_path="search?q={query}&type=product",
            territory="Pakistan",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="PKR",
            selectors={
                "container": ".grid__item.loadmore-item",
                "title": "a.product-title__truncate",
                "link": "a.product-title__truncate",
                "price": ".price, .money",
            },
            **kwargs,
        )


if __name__ == "__main__":
    import logging

    logging.basicConfig(level=logging.INFO)
    spider = VanguardPkSpider(limit_pages=1, limit_items=5)
    spider.run()
