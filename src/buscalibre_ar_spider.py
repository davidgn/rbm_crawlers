from html_search_spider import HTMLSearchSpider

class BuscalibreArSpider(HTMLSearchSpider):
    """Spider for Buscalibre Argentina."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Buscalibre Argentina",
            base_url="https://www.buscalibre.com.ar",
            search_path="libros/search?q={query}&page={page}",
            selectors={'container': '.producto', 'title': 'h3.nombre', 'link': 'a', 'price': '.precio'},
            territory="Argentina", limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = BuscalibreArSpider(limit_pages=1)
    spider.run()
