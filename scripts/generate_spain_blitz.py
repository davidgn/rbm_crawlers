import os

CRAWLERS_DIR = "/opt/repos/rbm_crawlers/src"

GENERIC_TEMPLATE = """from html_search_spider import HTMLSearchSpider

class {class_name}(HTMLSearchSpider):
    \"\"\"Broad crawler for {vendor_name} ({territory}).\"\"\"
    def __init__(self, search_term: str = "books", limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="{vendor_name}",
            territory="{territory}",
            base_url="{base_url}",
            search_path="{search_path}",
            currency="EUR",
            limit_pages=limit_pages,
            limit_items=limit_items,
            item_pattern=r'(<div[^>]*class="[^"]*(?:product|item|card)[^"]*"[^>]*>.*?</div>)',
            url_regex=r'href="([^"]+)"',
            price_regex=r'([\\d,]+(?:\\.\\d{{2}})?)[\\s]*€|€[\\s]*([\\d,]+(?:\\.\\d{{2}})?)',
            title_regex=r'(?:title="|<h[1-6][^>]*>|<a[^>]*>)([^<"]+)(?:"|</h[1-6]>|</a>)',
            isbn_regex=r'(97[89]\\d{{10}})'
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int)
    args = parser.parse_args()
    
    {class_name}(
        search_term=args.query,
        limit_pages=args.limit_pages,
        limit_items=args.limit_items,
    ).run()
"""

targets = [
    ("CasaDelLibroESSpider", "Casa del Libro (ES)", "Spain", "www.casadellibro.com", "libros?q={search_term}", "casa_del_libro_e_s_spider.py"),
    ("FnacESSpider", "Fnac (ES)", "Spain", "www.fnac.es", "SearchResult/ResultList.aspx?Search={search_term}", "fnac_e_s_spider.py"),
    ("BuscalibreESSpider", "Buscalibre (ES)", "Spain", "www.buscalibre.es", "libros/search?q={search_term}", "buscalibre_e_s_spider.py"),
    ("TodosTusLibrosESSpider", "Todos Tus Libros (ES)", "Spain", "www.todostuslibros.com", "busqueda?keyword={search_term}", "todos_tus_libros_e_s_spider.py"),
    ("ComeInESSpider", "Come In (ES)", "Spain", "www.comeinbarcelona.com", "search?q={search_term}", "come_in_e_s_spider.py"),
    ("BibliostockESSpider", "Bibliostock (ES)", "Spain", "www.bibliostock.com", "buscar?controller=search&s={search_term}", "bibliostock_e_s_spider.py"),
    ("HibernianBooksESSpider", "Hibernian Books (ES)", "Spain", "www.hibernian-books.com", "search?q={search_term}", "hibernian_books_e_s_spider.py"),
    ("BackstoryESSpider", "Backstory (ES)", "Spain", "www.backstory.es", "search?q={search_term}", "backstory_e_s_spider.py"),
]

for class_name, vendor_name, territory, base_url, search_path, filename in targets:
    code = GENERIC_TEMPLATE.format(
        class_name=class_name,
        vendor_name=vendor_name,
        territory=territory,
        base_url=base_url,
        search_path=search_path
    )
    with open(os.path.join(CRAWLERS_DIR, filename), "w", encoding="utf-8") as f:
        f.write(code)
    print(f"Generated {filename}")
