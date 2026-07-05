from html_search_spider import HTMLSearchSpider

class CyphomaSintMaartenSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Cyphoma_SX", base_url="https://www.cyphoma.com",
            search_path="search?search%5Blocations%5D%5B%5D=4f7ce9f1c736276288001f91&search%5Bq%5D={search_term}",
            selectors={'container': 'article.card--classified', 'title': 'h2', 'price': '.price'},
            territory="Sint Maarten", limit_pages=limit_pages
        )

if __name__ == "__main__":
    CyphomaSintMaartenSpider(limit_pages=1).run()
