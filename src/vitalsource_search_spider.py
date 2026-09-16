from nodriver_search_spider import NodriverSearchSpider


class VitalSourceSearchSpider(NodriverSearchSpider):
    """Base search spider for VitalSource digital campus bookstore platform portals."""

    def __init__(self, platform_name: str, subdomain: str, territory: str = "United States", price_currency: str = "USD", limit_pages: int = 5, limit_items: int | None = None, **kwargs):
        self.subdomain = subdomain
        super().__init__(
            platform_name=platform_name,
            base_url=f"https://{subdomain}.vitalsource.com",
            search_path="textbooks?term={query}&page={page}",
            selectors={
                'container': 'li.product-search-result__wrapper',
                'title': '.product-search-result__title',
                'link': 'a[href*="/products/"]',
                'price': 'span.font-3.u-weight--bold',
            },
            territory=territory,
            price_currency=price_currency,
            limit_pages=limit_pages,
            limit_items=limit_items,
            **kwargs
        )
