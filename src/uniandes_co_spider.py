from html_search_spider import HTMLSearchSpider


class UniandesCoSpider(HTMLSearchSpider):
    """
    HTML search spider for Ediciones Uniandes / Tienda Uniandes Colombia (tienda.uniandes.edu.co) —
    University bookstore and publisher of Universidad de los Andes in Bogotá, Colombia, specializing in academic research, humanities, law, and literature.
    Colombia outbound M-Bag: $14.20 USD / 5 kg to US.
    """

    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Ediciones Uniandes",
            base_url="https://tienda.uniandes.edu.co",
            search_path="{query}?_q={query}&map=ft",
            territory="Colombia",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="COP",
            selectors={
                "container": ".vtex-product-summary-2-x-container",
                "title": "span.vtex-product-summary-2-x-productBrand",
                "link": "a[href*='/p']",
                "price": "span.vtex-product-price-1-x-sellingPriceValue",
            },
            **kwargs,
        )


if __name__ == "__main__":
    import logging

    logging.basicConfig(level=logging.INFO)
    spider = UniandesCoSpider(limit_pages=1, limit_items=5)
    spider.run()
