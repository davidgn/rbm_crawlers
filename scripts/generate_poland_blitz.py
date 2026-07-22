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
            currency="PLN",
            limit_pages=limit_pages,
            limit_items=limit_items,
            item_pattern=r'(<div[^>]*class="[^"]*(?:product|item|card|box)[^"]*"[^>]*>.*?</div>)',
            url_regex=r'href="([^"]+)"',
            price_regex=r'([\\d,]+(?:\\.\\d{{2}})?)[\\s]*z[łl]|z[łl][\\s]*([\\d,]+(?:\\.\\d{{2}})?)',
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
    ("TaniaKsiazkaPLSpider", "TaniaKsiazka (PL)", "Poland", "www.taniaksiazka.pl", "szukaj/q/?q={search_term}", "taniaksiazka_p_l_spider.py"),
    ("SwiatKsiazkiPLSpider", "SwiatKsiazki (PL)", "Poland", "www.swiatksiazki.pl", "szukaj?q={search_term}", "swiatksiazki_p_l_spider.py"),
    ("BonitoPLSpider", "Bonito (PL)", "Poland", "bonito.pl", "szukaj?q={search_term}", "bonito_p_l_spider.py"),
    ("EmpikPLSpider", "Empik (PL)", "Poland", "www.empik.com", "szukaj/produkt?q={search_term}", "empik_p_l_spider.py"),
    ("CzytamPLSpider", "Czytam (PL)", "Poland", "czytam.pl", "szukaj.html?q={search_term}", "czytam_p_l_spider.py"),
    ("AllegroPLSpider", "Allegro (PL)", "Poland", "allegro.pl", "kategoria/ksiazki-i-komiksy?string={search_term}", "allegro_p_l_spider.py"),
    ("AmazonPLSpider", "Amazon (PL)", "Poland", "www.amazon.pl", "s?k={search_term}", "amazon_p_l_spider.py"),
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
