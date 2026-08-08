import re
import requests
from base_spider import BaseSpider
from models import BookListing

class NinasLivrariaAoSpider(BaseSpider):
    """
    Supabase REST API spider for Nina's Livraria (ninaslivraria.com) —
    Luanda's digital-native online bookstore for business, personal growth, and technology.
    Angola outbound M-Bag: RG5 low cost origin.
    """
    BASE_URL = "https://ninaslivraria.com"
    SUPABASE_URL = "https://qnfzfoyascoqbusnbbar.supabase.co"

    def __init__(self, limit_pages: int = 50):
        super().__init__(platform_name="Nina's Livraria", territory="Angola")
        self.limit_pages = limit_pages
        self.session = requests.Session()
        self.session.headers.update({
            "User-Agent": (
                "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
                "AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
            ),
            "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
        })

    def run(self):
        self.logger.info("Starting Nina's Livraria Angola Supabase crawler.")
        
        try:
            # 1. Fetch homepage to locate JS bundle
            resp = self.session.get(self.BASE_URL, timeout=15)
            if resp.status_code != 200:
                self.logger.error(f"Failed to fetch homepage: status {resp.status_code}")
                return

            js_match = re.search(r"src=[\"'](/assets/[^\"']+\.js)[\"']", resp.text)
            if not js_match:
                self.logger.error("Could not find JS bundle on homepage")
                return

            js_url = f"{self.BASE_URL}{js_match.group(1)}"
            js_resp = self.session.get(js_url, timeout=15)
            if js_resp.status_code != 200:
                self.logger.error(f"Failed to fetch JS bundle: status {js_resp.status_code}")
                return

            # 2. Extract Supabase anon key
            anon_keys = re.findall(r"eyJ[A-Za-z0-9_\-\.]+", js_resp.text)
            if not anon_keys:
                self.logger.error("Could not extract Supabase anon key from JS bundle")
                return

            anon_key = anon_keys[0]

            # 3. Query Supabase REST API for products
            api_url = f"{self.SUPABASE_URL}/rest/v1/products?select=*"
            headers = {
                "apikey": anon_key,
                "Authorization": f"Bearer {anon_key}",
            }

            api_resp = self.session.get(api_url, headers=headers, timeout=15)
            if api_resp.status_code != 200:
                self.logger.error(f"Supabase API returned status {api_resp.status_code}")
                return

            products = api_resp.json()
            for p in products:
                title = p.get("title")
                if not title:
                    continue

                author = p.get("author")
                price_val = p.get("price")
                item_id = p.get("id")

                listing_url = f"{self.BASE_URL}/#product-{item_id}" if item_id else self.BASE_URL

                item = BookListing(
                    territory=self.territory,
                    platform=self.platform_name,
                    title=title,
                    author=author,
                    price=str(price_val) if price_val is not None else None,
                    price_currency="AOA",
                    listing_url=listing_url,
                    condition="New",
                )
                self.save_item(item)

        except Exception as e:
            self.logger.error(f"Error executing Nina's Livraria crawler: {e}")

        self.logger.info(f"Finished Nina's Livraria Angola. Scraped {self.items_scraped} items.")

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Nina's Livraria Angola bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=10)
    args = parser.parse_args()
    NinasLivrariaAoSpider(limit_pages=args.limit_pages).run()
