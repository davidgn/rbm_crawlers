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
            item_pattern=r'(<div[^>]*class="[^"]*(?:product|item|card|livro)[^"]*"[^>]*>.*?</div>)',
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
    ("BertrandPTSpider", "Bertrand (PT)", "Portugal", "www.bertrand.pt", "pesquisa/{search_term}", "bertrand_p_t_spider.py"),
    ("FnacPTSpider", "Fnac (PT)", "Portugal", "www.fnac.pt", "SearchResult/ResultList.aspx?Search={search_term}", "fnac_p_t_spider.py"),
    ("AlmedinaPTSpider", "Almedina (PT)", "Portugal", "www.almedina.net", "pesquisa?q={search_term}", "almedina_p_t_spider.py"),
    ("LelloPTSpider", "Livraria Lello (PT)", "Portugal", "www.livrarialello.pt", "loja/pesquisa?q={search_term}", "lello_p_t_spider.py"),
    ("TravessaPTSpider", "Livraria da Travessa (PT)", "Portugal", "www.travessa.pt", "busca?q={search_term}", "travessa_p_t_spider.py"),
    ("GoodCompanyPTSpider", "Good Company Books (PT)", "Portugal", "goodcompanybooks.com", "search?q={search_term}", "good_company_books_p_t_spider.py"),
    ("TradeStoriesPTSpider", "TradeStories (PT)", "Portugal", "tradestories.pt", "pesquisa?q={search_term}", "trade_stories_p_t_spider.py"),
    ("AlfarrabistaPTSpider", "Alfarrabista (PT)", "Portugal", "www.alfarrabista.pt", "pesquisa.php?q={search_term}", "alfarrabista_p_t_spider.py"),
    ("LeyaOnlinePTSpider", "Leya Online (PT)", "Portugal", "www.leyaonline.com", "pt/pesquisa/?q={search_term}", "leya_online_p_t_spider.py"),
    ("FlaneurPTSpider", "Livraria Flaneur (PT)", "Portugal", "www.flaneur.pt", "?s={search_term}&post_type=product", "flaneur_p_t_spider.py"),
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
