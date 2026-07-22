import argparse
from html_search_spider import HTMLSearchSpider

# Subdomain mapping for OpenSooq
OPENSOOQ_TLDS = {
    "JO": "jo", # Jordan
    "SA": "sa", # Saudi Arabia
    "IQ": "iq", # Iraq
    "OM": "om", # Oman
    "KW": "kw", # Kuwait
    "AE": "ae", # UAE
    "BH": "bh", # Bahrain
    "EG": "eg", # Egypt
    "YE": "ye", # Yemen
    "SY": "sy", # Syria
    "LY": "ly", # Libya
    "SD": "sd", # Sudan
    "LB": "lb", # Lebanon
    "PS": "ps", # Palestine
    "QA": "qa", # Qatar
}

class OpenSooqSpider(HTMLSearchSpider):
    """Unified global crawler for OpenSooq across the MENA region."""
    def __init__(self, search_term: str = "كتب", country_code: str = "JO", limit_pages: int = 50):
        country_code = country_code.upper()
        if country_code not in OPENSOOQ_TLDS:
            raise ValueError(f"Unsupported country code: {country_code}. Must be one of {list(OPENSOOQ_TLDS.keys())}")
            
        subdomain = OPENSOOQ_TLDS[country_code]
        base_url = f"https://{subdomain}.opensooq.com"
            
        super().__init__(
            platform_name=f"OpenSooq_{country_code}",
            base_url=base_url,
            search_path="ar/find?term={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory=country_code,
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Unified OpenSooq Spider")
    parser.add_argument("--query", type=str, default="كتب مستعملة")
    parser.add_argument("--country", type=str, default="JO", help="Country code (e.g. JO, SA, AE)")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    
    spider = OpenSooqSpider(search_term=args.query, country_code=args.country, limit_pages=args.limit_pages)
    spider.run()
