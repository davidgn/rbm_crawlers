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
            currency="AED",
            limit_pages=limit_pages,
            limit_items=limit_items,
            item_pattern=r'(<div[^>]*class="[^"]*(?:product|item|card|grid)[^"]*"[^>]*>.*?</div>)',
            url_regex=r'href="([^"]+)"',
            price_regex=r'AED[\\s]*([\\d,]+(?:\\.\\d{{2}})?)|([\\d,]+(?:\\.\\d{{2}})?)[\\s]*AED',
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
    ("KinokuniyaUAESpider", "Kinokuniya (UAE)", "UAE", "uae.kinokuniya.com", "products?is_searching=true&restrictBy=Title&keywords={search_term}", "kinokuniya_u_a_e_spider.py"),
    ("JarirUAESpider", "Jarir Bookstore (UAE)", "UAE", "www.jarir.com", "ae-en/search?query={search_term}", "jarir_u_a_e_spider.py"),
    ("MagrudysUAESpider", "Magrudy's (UAE)", "UAE", "magrudy.com", "search?q={search_term}", "magrudys_u_a_e_spider.py"),
    ("VirginMegastoreUAESpider", "Virgin Megastore (UAE)", "UAE", "www.virginmegastore.ae", "en/search/?text={search_term}", "virgin_megastore_u_a_e_spider.py"),
    ("BookHeroUAESpider", "BookHero (UAE)", "UAE", "www.bookhero.ae", "search?q={search_term}", "bookhero_u_a_e_spider.py"),
    ("DesertcartUAESpider", "Desertcart (UAE)", "UAE", "www.desertcart.ae", "search/{search_term}", "desertcart_u_a_e_spider.py"),
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
