from html_search_spider import HTMLSearchSpider


class ProfilTrSpider(HTMLSearchSpider):
    """
    HTML search spider for Profil Kitap Turkey (profilkitap.com) —
    Prominent Turkish publishing house and online bookstore specializing in philosophy, history, thought, and literature.
    Turkey outbound M-Bag: $11.50 USD / 5 kg to US.
    """

    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Profil Kitap",
            base_url="https://www.profilkitap.com",
            search_path="index.php?route=product/search&search={query}",
            territory="Turkey",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="TRY",
            selectors={
                "container": ".book-card, div[class*='book-card']",
                "title": "img.book-img[alt], a[href*='/kitap/'] img[alt]",
                "link": "a[href*='/kitap/']",
                "price": "span.text-lg, span.font-bold, .p-3\\.5 span",
            },
            **kwargs,
        )
        self.client.verify = False


if __name__ == "__main__":
    import logging

    logging.basicConfig(level=logging.INFO)
    spider = ProfilTrSpider(limit_pages=1, limit_items=5)
    spider.run()
