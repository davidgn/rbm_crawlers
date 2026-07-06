from html_search_spider import HTMLSearchSpider

class ScribblesTtSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Scribbles_TT", base_url="https://scribblesandquills.com",
            search_path="?s={search_term}&post_type=product",
            selectors={
                'container': 'div.e-loop-item',
                'title': '.product_title',
                'price': '.price'
            },
            price_currency="TTD",
            territory="Trinidad and Tobago", limit_pages=limit_pages
        )

if __name__ == "__main__":
    import os
    os.environ["RBM_SEARCH_TERM"] = "novel"
    ScribblesTtSpider(limit_pages=1).run()
