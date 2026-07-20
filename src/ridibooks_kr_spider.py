import httpx
from typing import List
from models import BookListing
from base_spider import BaseSpider

class RidibooksKrSpider(BaseSpider):
    """
    Broad crawler for RIDI Books (South Korea) using their JSON search API.
    Prices are in South Korean Won (KRW).
    """
    def __init__(self, limit_items: int = 50):
        super().__init__(platform_name="RIDI Books", territory="South Korea")
        self.api_url = "https://search-api.ridibooks.com/search"
        self.limit_items = limit_items
        self.client = httpx.Client(timeout=30.0, follow_redirects=True, verify=False)

    def search_books(self, query: str) -> List[BookListing]:
        listings = []
        try:
            params = {"keyword": query}
            headers = self.get_random_headers()
            headers.update({
                "Accept": "application/json, text/plain, */*",
                "Origin": "https://ridibooks.com",
                "Referer": "https://ridibooks.com/",
                "User-Agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
            })
            resp = self.client.get(self.api_url, params=params, headers=headers)
            if resp.status_code != 200:
                self.logger.warning(f"Got status {resp.status_code} for search query '{query}'")
                return listings

            data = resp.json()
            books = data.get("books", [])
            for item in books[:self.limit_items]:
                title = item.get("title") or item.get("web_title") or ""
                author = item.get("author") or ""
                price = item.get("price")
                b_id = item.get("b_id") or ""
                if not title or price is None:
                    continue

                product_url = f"https://ridibooks.com/books/{b_id}" if b_id else "https://ridibooks.com"

                listing = BookListing(
                    title=str(title).strip(),
                    author=str(author).strip() if author else None,
                    price=float(price),
                    price_currency="KRW",
                    url=product_url,
                    platform=self.platform_name,
                    territory=self.territory
                )
                self.save_item(listing)
                listings.append(listing)
        except Exception as e:
            self.logger.error(f"Error scraping RIDI Books for query '{query}': {e}")
        return listings

    def run(self) -> List[BookListing]:
        all_listings = []
        sample_queries = ["korea", "history", "novel", "science", "art"]
        for q in sample_queries:
            self.logger.info(f"Searching RIDI Books for query: '{q}'")
            res = self.search_books(q)
            all_listings.extend(res)
            if len(all_listings) >= self.limit_items:
                break
        self.logger.info(f"Finished RIDI Books. Extracted {len(all_listings)} listings.")
        return all_listings

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-items", type=int, default=10)
    args = parser.parse_args()

    spider = RidibooksKrSpider(limit_items=args.limit_items)
    results = spider.run()
    for r in results[:5]:
        print(r)
