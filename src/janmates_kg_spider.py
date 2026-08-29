import json
from base_spider import BaseSpider
from models import BookListing

class JanmatesKgSpider(BaseSpider):
    """
    Spider for Janmates (Kyrgyzstan), an InSales-based bookstore.
    M-Bag origin: Kyrgyzstan ($41.94).
    """

    def __init__(self, limit_pages: int = 5):
        super().__init__(
            platform_name="Janmates_KG",
            territory="Kyrgyzstan"
        )
        self.price_currency = "KGS"
        self.limit_pages = limit_pages
        self.base_url = "https://janmates.com"

    def run(self):
        page = 1
        has_more = True
        import requests
        while has_more and page <= self.limit_pages:
            url = f"{self.base_url}/collection/all.json?page={page}"
            try:
                response = requests.get(url, timeout=15)
                response.raise_for_status()
                data = response.json()
            except Exception as e:
                self.logger.error(f"Failed to fetch or parse JSON on page {page}: {e}")
                break
                
            products = data.get("products", [])
            if not products:
                break
                
            for product in products:
                title = product.get("title", "")
                prod_url = product.get("url", "")
                if prod_url.startswith("/"):
                    prod_url = f"{self.base_url}{prod_url}"
                
                variants = product.get("variants", [])
                if not variants:
                    continue
                    
                variant = variants[0]
                price = variant.get("price")
                sku = variant.get("sku") or ""
                
                if not price:
                    continue
                    
                listing = BookListing(
                    platform=self.platform_name,
                    territory=self.territory,
                    listing_url=prod_url,
                    title=title,
                    price=str(price),
                    isbn=str(sku),
                    currency=self.price_currency
                )
                self.save_item(listing)
                
            if len(products) < 100:
                has_more = False
                
            page += 1

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Janmates KG spider")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    
    spider = JanmatesKgSpider(limit_pages=args.limit_pages)
    spider.run()
