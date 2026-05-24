import re
from playwright_search_spider import PlaywrightSearchSpider

class KitepAppSpider(PlaywrightSearchSpider):
    """
    Spider for Kitep.app (Kyrgyzstan) - an aggregator for Bishkek bookstores.
    Uses Playwright to handle Next.js rendering.
    """
    def __init__(self, limit_pages: int = 10):
        super().__init__(
            platform_name="KitepApp",
            base_url="https://kitep.app",
            search_path="catalog?search={query}&page={page}",
            selectors={
                'container': 'a[href*="/book/"]', 
                'title': 'h3',
                'link': 'a',
                'price': '.text-orange-500, .font-700',
            },
            limit_pages=limit_pages
        )

    def _parse_item(self, item_soup):
        # Tailoring for Kitep.app specific structure
        title_el = item_soup.select_one('h3')
        if not title_el: return
        title = title_el.text.strip()
        
        listing_url = self.base_url + item_soup.get('href', '') if item_soup.name == 'a' else None

        price_val = None
        # Price is often in a specific span
        price_el = item_soup.find(string=re.compile(r'\d+\s*с')) # 'с' is for Som
        if not price_el:
            price_el = item_soup.select_one('.text-orange-500')
            
        if price_el:
            price_text = price_el.text.strip() if hasattr(price_el, 'text') else str(price_el).strip()
            price_val = f"KGS {price_text}"

        from models import BookListing
        book = BookListing(
            territory="Kyrgyzstan",
            platform=self.platform_name,
            title=title,
            author=None,
            price=price_val,
            listing_url=listing_url,
        )
        self.save_item(book)


if __name__ == "__main__":
    spider = KitepAppSpider(limit_pages=1)
    spider.run()
