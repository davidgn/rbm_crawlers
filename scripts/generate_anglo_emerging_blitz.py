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
            item_pattern=r'(<div[^>]*class="[^"]*(?:product|item|card|col)[^"]*"[^>]*>.*?</div>)',
            url_regex=r'href="([^"]+)"',
            price_regex=r'{currency_symbol}[\\s]*([\\d,]+(?:\\.\\d{{2}})?)|([\\d,]+(?:\\.\\d{{2}})?)[\\s]*{currency_symbol}',
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
    # Pakistan (PKR, Rs)
    ("ReadingsPKSpider", "Readings (PK)", "Pakistan", "www.readings.com.pk", "Pages/searchresult.aspx?Keyword={search_term}", "PKR", "Rs", "readings_p_k_spider.py"),
    ("LibertyBooksPKSpider", "Liberty Books (PK)", "Pakistan", "www.libertybooks.com", "index.php?route=product/search&search={search_term}", "PKR", "Rs", "liberty_books_p_k_spider.py"),
    ("BookEvePKSpider", "Book Eve (PK)", "Pakistan", "bookeve.pk", "search?q={search_term}", "PKR", "Rs", "book_eve_p_k_spider.py"),
    ("BooksTurnerPKSpider", "Books Turner (PK)", "Pakistan", "booksturner.pk", "search?q={search_term}", "PKR", "Rs", "books_turner_p_k_spider.py"),
    ("StudentStorePKSpider", "StudentStore.pk (PK)", "Pakistan", "studentstore.pk", "search?q={search_term}", "PKR", "Rs", "student_store_p_k_spider.py"),
    ("UrduBazarPKSpider", "Urdu Bazar Online (PK)", "Pakistan", "urdubazaronline.com", "search?q={search_term}", "PKR", "Rs", "urdu_bazar_p_k_spider.py"),

    # Bangladesh (BDT, Tk)
    ("RokomariBDSpider", "Rokomari (BD)", "Bangladesh", "www.rokomari.com", "search?term={search_term}", "BDT", "Tk", "rokomari_b_d_spider.py"),
    ("EboigharBDSpider", "eBoighar (BD)", "Bangladesh", "www.eboighar.com", "search?q={search_term}", "BDT", "Tk", "eboighar_b_d_spider.py"),
    ("BookendsBDSpider", "Bookends (BD)", "Bangladesh", "www.bookendsbd.com", "search?q={search_term}", "BDT", "Tk", "bookends_b_d_spider.py"),
    ("HarekrokomBDSpider", "Harekrokom (BD)", "Bangladesh", "www.harekrokom.com", "search?q={search_term}", "BDT", "Tk", "harekrokom_b_d_spider.py"),
    ("BookOceanBDSpider", "Book Ocean BD (BD)", "Bangladesh", "www.bookoceanbd.com", "search?q={search_term}", "BDT", "Tk", "book_ocean_b_d_spider.py"),
    ("BoiBazarBDSpider", "Boi Bazar (BD)", "Bangladesh", "www.boibazar.com", "search?q={search_term}", "BDT", "Tk", "boi_bazar_b_d_spider.py"),

    # Nigeria (NGN, ₦)
    ("RovingHeightsNGSpider", "Roving Heights (NG)", "Nigeria", "rhbooks.com.ng", "?s={search_term}&post_type=product", "NGN", "₦", "roving_heights_n_g_spider.py"),
    ("PageBookStoreNGSpider", "PAGE Book Connoisseurs (NG)", "Nigeria", "pagebookstore.com", "?s={search_term}&post_type=product", "NGN", "₦", "page_book_store_n_g_spider.py"),
    ("SunshineBooksellerNGSpider", "Sunshine Bookseller (NG)", "Nigeria", "sunshinebookseller.com", "index.php?route=product/search&search={search_term}", "NGN", "₦", "sunshine_bookseller_n_g_spider.py"),
    ("VogAndWodNGSpider", "Vog and Wod Bookstore (NG)", "Nigeria", "vogandwodbooks.com", "?s={search_term}&post_type=product", "NGN", "₦", "vog_and_wod_n_g_spider.py"),
    ("BellaBooksNGSpider", "BellaBooks (NG)", "Nigeria", "shopbellabooks.com", "search?q={search_term}", "NGN", "₦", "bella_books_n_g_spider.py"),
    ("JudobiBookShelfNGSpider", "JUDOBI BookShelf (NG)", "Nigeria", "judobibookshelf.com", "?s={search_term}&post_type=product", "NGN", "₦", "judobi_book_shelf_n_g_spider.py"),
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
