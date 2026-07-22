from html_search_spider import HTMLSearchSpider

class TrovitBrSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 10, limit_items: int | None = None):
        super().__init__(
            platform_name="Trovit Brazil",
            territory="Brazil",
            base_url="https://imoveis.trovit.com.br",
            search_path="index.php/cod.search_homes/what_d.{query}/page.{page}",
            selectors={'container': 'div.snippet', 'title': 'h4.title', 'price': 'span.amount'},
            price_currency="BRL",
            limit_pages=limit_pages,
            limit_items=limit_items
        )

if __name__ == "__main__":
    TrovitBrSpider().run()
