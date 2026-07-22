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
            currency="PHP",
            limit_pages=limit_pages,
            limit_items=limit_items,
            item_pattern=r'(<div[^>]*class="[^"]*(?:product|item|card|grid)[^"]*"[^>]*>.*?</div>)',
            url_regex=r'href="([^"]+)"',
            price_regex=r'₱[\\s]*([\\d,]+(?:\\.\\d{{2}})?)|PHP[\\s]*([\\d,]+(?:\\.\\d{{2}})?)|([\\d,]+(?:\\.\\d{{2}})?)[\\s]*PHP',
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
    ("FullyBookedPHSpider", "Fully Booked (PH)", "Philippines", "www.fullybookedonline.com", "catalogsearch/result/?q={search_term}", "fully_booked_p_h_spider.py"),
    ("BookshelfPHSpider", "Bookshelf PH (PH)", "Philippines", "bookshelf.com.ph", "search?q={search_term}", "bookshelf_p_h_spider.py"),
    ("ArtbooksPHSpider", "Artbooks.ph (PH)", "Philippines", "artbooks.ph", "search?q={search_term}", "artbooks_p_h_spider.py"),
    ("OmnianaPHSpider", "Omniana Books (PH)", "Philippines", "omniana.ph", "search?q={search_term}", "omniana_p_h_spider.py"),
    ("SavageMindPHSpider", "Savage Mind (PH)", "Philippines", "savagemind.ph", "search?q={search_term}", "savage_mind_p_h_spider.py"),
    ("BlitheBooksPHSpider", "Blithe Books (PH)", "Philippines", "blithebooks.ph", "search?q={search_term}", "blithe_books_p_h_spider.py"),
    ("BooksForLessPHSpider", "Books for Less (PH)", "Philippines", "booksforless.ph", "search?q={search_term}", "books_for_less_p_h_spider.py"),
    ("PorchReaderPHSpider", "Porch Reader (PH)", "Philippines", "porchreader.ph", "search?q={search_term}", "porch_reader_p_h_spider.py"),
    ("BiblioPHSpider", "Biblio (PH)", "Philippines", "biblio.com.ph", "search?q={search_term}", "biblio_p_h_spider.py"),
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
