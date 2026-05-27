import json
import re
from html_search_spider import HTMLSearchSpider
from models import BookListing

class WhitcoullsNzSpider(HTMLSearchSpider):
    """
    Spider for Whitcoulls (New Zealand).
    A major national chain with a robust online platform.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Whitcoulls",
            base_url="https://www.whitcoulls.co.nz",
            search_path="search?q={query}&page={page}",
            selectors={'container': 'script', 'title': 'unused'},
            territory="New Zealand",
            limit_pages=limit_pages
        )

    def run(self):
        # We only need to fetch the search page to get the JSON blob
        super().run()

    def _parse_item(self, item_soup):
        # item_soup is a script tag
        script_text = item_soup.string
        if not script_text or "window.category" not in script_text:
            return

        try:
            # Extract JSON from window.category = {...};
            match = re.search(r'window\.category\s*=\s*(\{.*?\});', script_text, re.DOTALL)
            if not match:
                match = re.search(r'window\.category\s*=\s*(\{.*?\})', script_text, re.DOTALL)

            if match:
                data = json.loads(match.group(1))
                items = data.get('items', [])
                self.logger.info(f"Found {len(items)} items in Whitcoulls window.category.")
                for p in items:
                    style_colour = p.get('stylecolour', {})
                    title = style_colour.get('webtitle') or p.get('description')
                    if not title: continue

                    price = p.get('variant', {}).get('unitprice')
                    author_list = p.get('attributes', {}).get('author', [])
                    author = author_list[0] if author_list else None
                    listing_url = self.base_url + style_colour.get('url', '')

                    book = BookListing(
                        territory=self.territory,
                        platform=self.platform_name,
                        title=title,
                        author=author,
                        price=f"NZD {price}" if price else None,
                        listing_url=listing_url,
                    )
                    self.save_item(book)
        except Exception as e:
            self.logger.error(f"Failed to parse Whitcoulls JSON: {e}")


if __name__ == "__main__":
    spider = WhitcoullsNzSpider(limit_pages=1)
    spider.run()
