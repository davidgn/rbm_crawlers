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
            currency="NZD",
            limit_pages=limit_pages,
            limit_items=limit_items,
            item_pattern=r'(<div[^>]*class="[^"]*(?:product|item|card|listing)[^"]*"[^>]*>.*?</div>)',
            url_regex=r'href="([^"]+)"',
            price_regex=r'\\$([\\d,]+(?:\\.\\d{{2}})?)|([\\d,]+(?:\\.\\d{{2}})?)[\\s]*\\$',
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
    ("BookHeroNZSpider", "Book Hero (NZ)", "New Zealand", "www.bookhero.co.nz", "search?q={search_term}", "book_hero_n_z_spider.py"),
    ("TheNileNZSpider", "The Nile (NZ)", "New Zealand", "www.thenile.co.nz", "search?s={search_term}", "the_nile_n_z_spider.py"),
    ("PaperPlusNZSpider", "Paper Plus (NZ)", "New Zealand", "www.paperplus.co.nz", "search?q={search_term}", "paper_plus_n_z_spider.py"),
    ("WhitcoullsNZSpider", "Whitcoulls (NZ)", "New Zealand", "www.whitcoulls.co.nz", "search?q={search_term}", "whitcoulls_n_z_spider.py"),
    ("UnityBooksNZSpider", "Unity Books (NZ)", "New Zealand", "unitybooks.co.nz", "?s={search_term}&post_type=product", "unity_books_n_z_spider.py"),
    ("VolumeNZSpider", "VOLUME (NZ)", "New Zealand", "volumebooks.online", "search?q={search_term}", "volume_n_z_spider.py"),
    ("HedleysBooksNZSpider", "Hedleys Books (NZ)", "New Zealand", "booksonline.co.nz", "search?q={search_term}", "hedleys_books_n_z_spider.py"),
    ("BookHubNZSpider", "BookHub (NZ)", "New Zealand", "www.bookhub.co.nz", "search?q={search_term}", "bookhub_n_z_spider.py"),
    ("MightyApeNZSpider", "Mighty Ape (NZ)", "New Zealand", "www.mightyape.co.nz", "books?q={search_term}", "mighty_ape_n_z_spider.py"),
    ("TradeMeNZSpider", "Trade Me (NZ)", "New Zealand", "www.trademe.co.nz", "books?search_string={search_term}", "trade_me_n_z_spider.py"),
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
