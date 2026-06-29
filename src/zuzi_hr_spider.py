import json
from bs4 import BeautifulSoup
from playwright_search_spider import PlaywrightSearchSpider
from models import BookListing

class ZuziHrSpider(PlaywrightSearchSpider):
    """
    Playwright spider for ZUZI Shop (Croatia).
    Extracts data directly from the injected JSON-LD schema for max reliability.
    """
    def __init__(self, limit_pages=10, **kwargs):
        super().__init__(
            platform_name="ZUZI Shop",
            base_url="https://www.zuzi.hr",
            search_path="pretrazi?pojam={query}&page={page}",
            selectors={'container': 'main'},  # Wait for main content to be visible
            territory="Croatia",
            limit_pages=limit_pages,
            **kwargs
        )

    def _parse_item(self, item_soup):
        # item_soup here will be the <main> element. We need to find the script inside it or the whole page.
        # It's better to search the whole soup, but item_soup has it.
        script_tag = item_soup.find("script", id="catalog-products-schema")
        if not script_tag:
            # Maybe it's outside main, let's search parents
            doc = item_soup.find_parent("html") or item_soup
            script_tag = doc.find("script", id="catalog-products-schema")
            
        if not script_tag:
            self.logger.warning("Could not find script#catalog-products-schema")
            return

        try:
            data = json.loads(script_tag.text)
            items = data.get("itemListElement", [])
            for el in items:
                product = el.get("item", {})
                title = product.get("name")
                listing_url = product.get("url")
                
                price_val = None
                offers = product.get("offers", {})
                if offers:
                    currency = offers.get("priceCurrency", "EUR")
                    price = offers.get("price")
                    if price:
                        price_val = f"{currency} {price}"
                        
                if not title or not listing_url:
                    continue
                    
                book = BookListing(
                    territory=self.territory,
                    platform=self.platform_name,
                    title=title,
                    price=price_val,
                    listing_url=listing_url,
                )
                self.save_item(book)
                self.items_scraped += 1
        except Exception as e:
            self.logger.error(f"Error parsing JSON-LD schema: {e}")

if __name__ == "__main__":
    spider = ZuziHrSpider(limit_pages=1)
    spider.run("potter")
