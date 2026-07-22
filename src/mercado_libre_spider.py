import argparse
from html_search_spider import HTMLSearchSpider

# TLD mapping for Mercado Libre Latin America
ML_TLDS = {
    "AR": "com.ar",
    "BO": "com.bo",
    "BR": "com.br",
    "CL": "cl",
    "CO": "com.co",
    "CR": "co.cr",
    "DO": "com.do",
    "EC": "com.ec",
    "GT": "com.gt",
    "HN": "com.hn",
    "MX": "com.mx",
    "NI": "com.ni",
    "PA": "com.pa",
    "PY": "com.py",
    "PE": "com.pe",
    "SV": "com.sv",
    "UY": "com.uy",
    "VE": "com.ve",
}

class MercadoLibreSpider(HTMLSearchSpider):
    """Unified global crawler for MercadoLibre across Latin America."""
    def __init__(self, search_term: str = "libros-usados", country_code: str = "MX", limit_pages: int = 50):
        country_code = country_code.upper()
        if country_code not in ML_TLDS:
            raise ValueError(f"Unsupported country code: {country_code}. Must be one of {list(ML_TLDS.keys())}")
            
        tld = ML_TLDS[country_code]
        # In Brazil, the brand is "Mercado Livre" and the subdomain is "lista.mercadolivre.com.br"
        # For all other countries, it is "listado.mercadolibre..."
        if country_code == "BR":
            base_url = f"https://lista.mercadolivre.{tld}"
            platform_name = "MercadoLivre"
        else:
            base_url = f"https://listado.mercadolibre.{tld}"
            platform_name = "MercadoLibre"
            
        super().__init__(
            platform_name=f"{platform_name}_{country_code}",
            base_url=base_url,
            search_path="{search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory=country_code,
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Unified MercadoLibre/MercadoLivre Spider")
    parser.add_argument("--query", type=str, default="libros-usados")
    parser.add_argument("--country", type=str, default="MX", help="Country code (e.g. MX, CO, AR, BR)")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    
    # If query is 'libros-usados' but country is BR, translate it to Portuguese
    query = args.query
    if args.country.upper() == "BR" and query == "libros-usados":
        query = "livros-usados" # Portuguese spelling is same URL slug usually, or 'livros-usados'
        
    spider = MercadoLibreSpider(search_term=query, country_code=args.country, limit_pages=args.limit_pages)
    spider.run()
