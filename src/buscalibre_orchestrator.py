import argparse
from typing import Optional
from html_search_spider import HTMLSearchSpider

class BuscalibreOrchestrator(HTMLSearchSpider):
    """
    Multi-Regional Orchestrator for Buscalibre.
    Dynamically swaps base URL and currency logic based on the target country code.
    Replaces 8 distinct spider files with a single unified architecture.
    """
    
    REGIONS = {
        "CO": {"url": "https://www.buscalibre.com.co", "territory": "Colombia", "currency": "COP"},
        "CL": {"url": "https://www.buscalibre.cl", "territory": "Chile", "currency": "CLP"},
        "MX": {"url": "https://www.buscalibre.com.mx", "territory": "Mexico", "currency": "MXN"},
        "AR": {"url": "https://www.buscalibre.com.ar", "territory": "Argentina", "currency": "ARS"},
        "PE": {"url": "https://www.buscalibre.pe", "territory": "Peru", "currency": "PEN"},
        "UY": {"url": "https://www.buscalibre.com.uy", "territory": "Uruguay", "currency": "UYU"},
        "EC": {"url": "https://www.buscalibre.ec", "territory": "Ecuador", "currency": "USD"},
        "CR": {"url": "https://www.buscalibre.cr", "territory": "Costa Rica", "currency": "CRC"},
    }

    def __init__(self, country_code: str = "CO", limit_pages: int = 50, limit_items: Optional[int] = None):
        region = self.REGIONS.get(country_code.upper())
        if not region:
            raise ValueError(f"Unsupported Country Code: {country_code}. Must be one of {list(self.REGIONS.keys())}")
            
        super().__init__(
            platform_name=f"Buscalibre {region['territory']}",
            base_url=region["url"],
            search_path="libros/search?q={query}&page={page}",
            selectors={
                "container": ".producto",
                "title": "h3.nombre",
                "link": "a",
                "price": ".precio",
            },
            territory=region["territory"],
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency=region["currency"],
        )

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Buscalibre Multi-Regional Orchestrator")
    parser.add_argument("--region", type=str, default="CO", help="Country code (e.g. CO, CL, MX)")
    parser.add_argument("--limit", type=int, default=1)
    parser.add_argument("--limit-pages", type=int)
    parser.add_argument("--limit-items", type=int)
    args = parser.parse_args()
    
    spider = BuscalibreOrchestrator(
        country_code=args.region,
        limit_pages=args.limit_pages or args.limit,
        limit_items=args.limit_items,
    )
    spider.run()
