from shopify_search_spider import ShopifySearchSpider

class TecnicienciaVeSpider(ShopifySearchSpider):
    """
    Broad crawler for Tecni-Ciencia Libros (Venezuela) using Shopify API.
    Prices are in USD.
    """
    def __init__(self, limit_items: int = 50):
        super().__init__(
            platform_name="Tecni-Ciencia Libros",
            base_url="https://tecniciencia.com",
            territory="Venezuela",
            price_currency="USD",
            limit_items=limit_items
        )
