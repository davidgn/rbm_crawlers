import argparse
from playwright_search_spider import PlaywrightSearchSpider

class TodosTusLibrosSpider(PlaywrightSearchSpider):
    """
    Spider for TodosTusLibros (Spain) using Playwright to bypass anti-bot challenges.
    """
    def __init__(self, limit_pages: int = 5, limit_items: int | None = None, **kwargs):
        super().__init__(
            platform_name="TodosTusLibros",
            base_url="https://www.todostuslibros.com",
            search_path="busqueda/pagina_{page}.html?keyword={query}",
            selectors={
                'container': '.book, .libro, .real-book, div.card, li.book-item, .product-item',
                'title': '.title a, h2 a, h3 a, a.title, .card-title',
                'link': 'a[href*="/libros/"], a[href*="/libro/"], a.title',
                'price': '.price, .precio, span.precio, .card-price',
                'author': '.author a, .autor a, .author, .card-author'
            },
            territory="Spain",
            price_currency="EUR",
            limit_pages=limit_pages,
            limit_items=limit_items,
            **kwargs
        )

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="TodosTusLibros Playwright Spider")
    parser.add_argument("--query", type=str, default="Potter")
    parser.add_argument("--limit-pages", type=int, default=2)
    parser.add_argument("--limit-items", type=int, default=10)
    args = parser.parse_args()

    spider = TodosTusLibrosSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run(search_term=args.query)
