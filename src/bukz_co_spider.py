from shopify_spider import ShopifyAPISpider


class BukzCoSpider(ShopifyAPISpider):
    """
    Shopify API crawler for Librería Bukz Colombia (bukz.co) —
    Curated high-end independent literature, culture, and arts bookstore based in Medellín & Bogotá.
    Colombia outbound M-Bag: $12.80 USD / 5 kg to US.
    """

    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Librería Bukz",
            base_url="https://bukz.co",
            territory="Colombia",
            limit_pages=limit_pages,
            limit_items=limit_items,
            currency="COP",
            **kwargs,
        )
        self.client.verify = False


if __name__ == "__main__":
    import logging

    logging.basicConfig(level=logging.INFO)
    spider = BukzCoSpider(limit_pages=1, limit_items=5)
    spider.run()
