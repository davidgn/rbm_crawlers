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
            currency="{currency}",
            limit_pages=limit_pages,
            limit_items=limit_items,
            item_pattern=r'(<div[^>]*class="[^"]*(?:product|item|card|prod_item)[^"]*"[^>]*>.*?</div>)',
            url_regex=r'href="([^"]+)"',
            price_regex=r'([\\d,]+(?:\\.\\d{{2}})?)[\\s]*{currency_symbol}|{currency_symbol}[\\s]*([\\d,]+(?:\\.\\d{{2}})?)',
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
    # South Korea (KRW, ₩)
    ("KyoboKRSpider", "Kyobo (KR)", "South Korea", "www.kyobobook.co.kr", "search?keyword={search_term}", "KRW", "₩", "kyobo_k_r_spider.py"),
    ("GmarketKRSpider", "Gmarket (KR)", "South Korea", "www.gmarket.co.kr", "n/search?keyword={search_term}", "KRW", "₩", "gmarket_k_r_spider.py"),
    ("HangeulParkKRSpider", "HangeulPark (KR)", "South Korea", "www.hangeulpark.com", "search?q={search_term}", "KRW", "₩", "hangeul_park_k_r_spider.py"),
    ("SeoulSelectionKRSpider", "Seoul Selection (KR)", "South Korea", "www.seoulselection.com", "search?q={search_term}", "KRW", "₩", "seoul_selection_k_r_spider.py"),
    ("InterparkKRSpider", "Interpark Books (KR)", "South Korea", "book.interpark.com", "search?q={search_term}", "KRW", "₩", "interpark_k_r_spider.py"),
    
    # Taiwan (TWD, NT$)
    ("SanminTWSpider", "Sanmin (TW)", "Taiwan", "www.sanmin.com.tw", "search/index/?ct=K&qu={search_term}", "TWD", "NT\\$", "sanmin_t_w_spider.py"),
    ("CavesBooksTWSpider", "Caves Books (TW)", "Taiwan", "www.cavesbooks.com.tw", "EC/Caves_Search.aspx?keyword={search_term}", "TWD", "NT\\$", "caves_books_t_w_spider.py"),
    ("YabookTWSpider", "Yabook (TW)", "Taiwan", "www.yabook.com.tw", "search.php?keywords={search_term}", "TWD", "NT\\$", "yabook_t_w_spider.py"),
    ("MollieTWSpider", "Mollie Used Books (TW)", "Taiwan", "www.mollie.com.tw", "search?q={search_term}", "TWD", "NT\\$", "mollie_t_w_spider.py"),
]

for class_name, vendor_name, territory, base_url, search_path, currency, curr_sym, filename in targets:
    code = GENERIC_TEMPLATE.format(
        class_name=class_name,
        vendor_name=vendor_name,
        territory=territory,
        base_url=base_url,
        search_path=search_path,
        currency=currency,
        currency_symbol=curr_sym
    )
    with open(os.path.join(CRAWLERS_DIR, filename), "w", encoding="utf-8") as f:
        f.write(code)
    print(f"Generated {filename}")
