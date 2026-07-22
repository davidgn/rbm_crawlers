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
    # France
    ("FnacFRSpider", "Fnac (FR)", "France", "www.fnac.com", "SearchResult/ResultList.aspx?Search={search_term}", "fnac_f_r_spider.py"),
    ("CulturaFRSpider", "Cultura (FR)", "France", "www.cultura.com", "search?q={search_term}", "cultura_f_r_spider.py"),
    ("LesLibrairesFRSpider", "LesLibraires.fr (FR)", "France", "www.leslibraires.fr", "recherche/?q={search_term}", "leslibraires_f_r_spider.py"),
    ("LirekaFRSpider", "Lireka (FR)", "France", "www.lireka.com", "fr/search?q={search_term}", "lireka_f_r_spider.py"),
    ("EyrollesFRSpider", "Eyrolles (FR)", "France", "www.eyrolles.com", "Recherche/?q={search_term}", "eyrolles_f_r_spider.py"),
    ("MollatFRSpider", "Mollat (FR)", "France", "www.mollat.com", "recherche?q={search_term}", "mollat_f_r_spider.py"),
    ("ChapitreFRSpider", "Chapitre (FR)", "France", "www.chapitre.com", "recherche?q={search_term}", "chapitre_f_r_spider.py"),
    
    # Italy
    ("HoepliITSpider", "Hoepli (IT)", "Italy", "www.hoepli.it", "cerca/libri.aspx?query={search_term}", "hoepli_i_t_spider.py"),
    ("LibreriaUniversitariaITSpider", "LibreriaUniversitaria (IT)", "Italy", "www.libreriauniversitaria.it", "ricerca/query/{search_term}", "libreria_universitaria_i_t_spider.py"),
    ("UnilibroITSpider", "Unilibro (IT)", "Italy", "www.unilibro.it", "libri/ricerca?query={search_term}", "unilibro_i_t_spider.py"),
    ("DiManoInManoITSpider", "Di Mano in Mano (IT)", "Italy", "www.dimanoinmano.it", "it/ricerca?q={search_term}", "di_mano_in_mano_i_t_spider.py"),
    ("MercatoDelleOccasioniITSpider", "Mercato delle Occasioni (IT)", "Italy", "www.mercatodelleoccasioni.it", "ricerca.html?searchword={search_term}", "mercato_delle_occasioni_i_t_spider.py"),
    ("LibraccioITSpider", "Libraccio (IT)", "Italy", "www.libraccio.it", "ricerca?q={search_term}", "libraccio_i_t_spider.py"),
    ("MondadoriITSpider", "Mondadori Store (IT)", "Italy", "www.mondadoristore.it", "search/?q={search_term}", "mondadori_i_t_spider.py"),
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
