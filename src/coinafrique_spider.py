import argparse
from html_search_spider import HTMLSearchSpider

# TLD mapping for CoinAfrique
COINAFRIQUE_TLDS = {
    "BJ": "bj", # Benin
    "BF": "bf", # Burkina Faso
    "CM": "cm", # Cameroon
    "CG": "cg", # Congo
    "CD": "cd", # DR Congo
    "CI": "ci", # Cote d'Ivoire
    "GA": "ga", # Gabon
    "GN": "gn", # Guinea
    "MG": "mg", # Madagascar
    "ML": "ml", # Mali
    "NE": "ne", # Niger
    "SN": "sn", # Senegal
    "TG": "tg", # Togo
}

class CoinAfriqueSpider(HTMLSearchSpider):
    """Unified global crawler for CoinAfrique across Francophone Africa."""
    def __init__(self, search_term: str = "livres", country_code: str = "SN", limit_pages: int = 50):
        country_code = country_code.upper()
        if country_code not in COINAFRIQUE_TLDS:
            raise ValueError(f"Unsupported country code: {country_code}. Must be one of {list(COINAFRIQUE_TLDS.keys())}")
            
        tld = COINAFRIQUE_TLDS[country_code]
        base_url = f"https://{tld}.coinafrique.com"
            
        super().__init__(
            platform_name=f"CoinAfrique_{country_code}",
            base_url=base_url,
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory=country_code,
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Unified CoinAfrique Spider")
    parser.add_argument("--query", type=str, default="livres")
    parser.add_argument("--country", type=str, default="SN", help="Country code (e.g. SN, BF, NE)")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    
    spider = CoinAfriqueSpider(search_term=args.query, country_code=args.country, limit_pages=args.limit_pages)
    spider.run()
