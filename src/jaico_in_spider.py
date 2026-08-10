from html_search_spider import HTMLSearchSpider


class JaicoInSpider(HTMLSearchSpider):
    """
    HTML search spider for Jaico Publishing House India (jaicobooks.com) —
    Historic Indian publisher and online bookstore (founded 1946) specializing in business, philosophy, self-help, literature, and history.
    India outbound M-Bag: $24.78 USD / 11 kg to US.
    """

    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Jaico Publishing House",
            base_url="https://www.jaicobooks.com",
            search_path="search/{query}",
            territory="India",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="INR",
            selectors={
                "container": "article.type-product",
                "title": "h2.entry-title a",
                "link": "h2.entry-title a",
                "price": "span.price, .amount, .price-box",
            },
            **kwargs,
        )
        self.client.verify = False


if __name__ == "__main__":
    import logging

    logging.basicConfig(level=logging.INFO)
    spider = JaicoInSpider(limit_pages=1, limit_items=5)
    spider.run()
