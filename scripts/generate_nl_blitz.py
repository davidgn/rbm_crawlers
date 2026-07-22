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
            item_pattern=r'(<div[^>]*class="[^"]*(?:product|item|card|boek)[^"]*"[^>]*>.*?</div>)',
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
    ("BolNLSpider", "Bol.com (NL)", "Netherlands", "www.bol.com", "nl/nl/s/?searchtext={search_term}", "bol_n_l_spider.py"),
    ("AmazonNLSpider", "Amazon (NL)", "Netherlands", "www.amazon.nl", "s?k={search_term}", "amazon_n_l_spider.py"),
    ("LibrisNLSpider", "Libris (NL)", "Netherlands", "www.libris.nl", "zoeken?q={search_term}", "libris_n_l_spider.py"),
    ("DonnerNLSpider", "Donner (NL)", "Netherlands", "www.donner.nl", "zoeken?q={search_term}", "donner_n_l_spider.py"),
    ("AmericanBookCenterNLSpider", "American Book Center (NL)", "Netherlands", "abc.nl", "search?q={search_term}", "american_book_center_n_l_spider.py"),
    ("BoekenwereldNLSpider", "Boekenwereld (NL)", "Netherlands", "www.boekenwereld.com", "zoeken?q={search_term}", "boekenwereld_n_l_spider.py"),
    ("BoekwinkeltjesNLSpider", "Boekwinkeltjes (NL)", "Netherlands", "www.boekwinkeltjes.nl", "su/?qs={search_term}", "boekwinkeltjes_n_l_spider.py"),
    ("BoekenkraamNLSpider", "Boekenkraam (NL)", "Netherlands", "www.boekenkraam.nl", "zoeken/?q={search_term}", "boekenkraam_n_l_spider.py"),
    ("AthenaeumNLSpider", "Athenaeum (NL)", "Netherlands", "www.athenaeum.nl", "zoeken?q={search_term}", "athenaeum_n_l_spider.py"),
    ("ScheltemaNLSpider", "Scheltema (NL)", "Netherlands", "www.scheltema.nl", "zoeken?q={search_term}", "scheltema_n_l_spider.py"),
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
