from html_search_spider import HTMLSearchSpider

class MetromediaHnSpider(HTMLSearchSpider):
    """
    Spider for Metromedia (Honduras).
    Uses the Odoo platform.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Metromedia",
            base_url="https://metromedia.hn",
            search_path="shop?search={query}",
            selectors={
                'container': 'div.oe_product_cart', 
                'title': 'h6 a',
                'link': 'a[itemprop="url"]',
                'price': '.product_price',
            },
            territory="Honduras",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = MetromediaHnSpider(limit_pages=1)
    spider.run()
