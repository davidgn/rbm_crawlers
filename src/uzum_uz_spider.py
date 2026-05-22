import httpx
import time
import json
from models import BookListing
from base_spider import BaseSpider

class UzumUzSpider(BaseSpider):
    """
    Spider for Uzum Market (Uzbekistan) using their GraphQL API.
    """
    def __init__(self, limit_pages: int = 10):
        super().__init__(platform_name="Uzum", territory="Uzbekistan")
        self.api_url = "https://graphql.uzum.uz/"
        self.limit_pages = limit_pages
        self.client = httpx.Client(timeout=30.0, follow_redirects=True)
        self.limit_per_page = 48

    def run(self):
        self.logger.info(f"Starting Uzum API crawler. Limit: {self.limit_pages} pages.")
        
        search_terms = ["Harry Potter", "Kitob", "O'zbekiston"]
        
        for term in search_terms:
            for page in range(0, self.limit_pages):
                offset = page * self.limit_per_page
                self.logger.info(f"Searching for '{term}' page {page+1} (offset {offset})")
                
                payload = {
                    "operationName": "MakeSearch_ItemsAndFilters",
                    "variables": {
                        "queryInput": {
                            "text": term,
                            "showAdultContent": "NONE",
                            "filters": [],
                            "sort": "BY_RELEVANCE_DESC",
                            "pagination": {"offset": offset, "limit": self.limit_per_page},
                            "correctQuery": False,
                            "getFastCategories": True,
                            "fastCategoriesLimit": 11,
                            "fastCategoriesLevelOffset": 2,
                            "getPromotionItems": True,
                            "getFastFacets": False,
                            "fastFacetsLimit": 0
                        }
                    },
                    "query": """query MakeSearch_ItemsAndFilters($queryInput: MakeSearchQueryInput!) {
  makeSearch(query: $queryInput) {
    items {
      catalogCard {
        id
        productId
        title
        buyingOptions {
          priceBlock {
            sellPrice {
              amount
              __typename
            }
            __typename
          }
          __typename
        }
        __typename
      }
      __typename
    }
    total
    __typename
  }
}"""
                }
                
                try:
                    response = self.client.post(self.api_url, json=payload)
                    response.raise_for_status()
                    data = response.json()
                    
                    items = data.get("data", {}).get("makeSearch", {}).get("items", [])
                    if not items:
                        break
                        
                    for item in items:
                        card = item.get("catalogCard")
                        if card:
                            self._parse_item(card)
                            
                    total = data.get("data", {}).get("makeSearch", {}).get("total", 0)
                    if offset + self.limit_per_page >= total:
                        break
                        
                except Exception as e:
                    self.logger.error(f"Failed to fetch Uzum API for {term}: {e}")
                    break
                    
                time.sleep(2)

        self.logger.info(f"Finished Uzum. Scraped {self.items_scraped} items.")

    def _parse_item(self, card: dict):
        title = card.get("title", "")
        product_id = card.get("productId")
        listing_url = f"https://uzum.uz/uz/product/{product_id}" if product_id else None
        
        price_val = None
        price_block = card.get("buyingOptions", {}).get("priceBlock", {})
        if price_block and price_block.get("sellPrice"):
            amount = price_block["sellPrice"].get("amount")
            if amount:
                price_val = f"UZS {amount}"

        item = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=None, # Uzum doesn't explicitly return author in catalog card
            price=price_val,
            listing_url=listing_url,
        )
        self.save_item(item)

if __name__ == "__main__":
    spider = UzumUzSpider(limit_pages=1)
    spider.run()
