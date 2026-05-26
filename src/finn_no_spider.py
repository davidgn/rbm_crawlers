import re
from html_search_spider import HTMLSearchSpider

class FinnNoSpider(HTMLSearchSpider):
    """
    Spider for Finn.no (Norway).
    The largest marketplace in Norway.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Finn.no",
            base_url="https://www.finn.no",
            # category 0.67 is for Books
            search_path="recommerce/forsale/search?category=0.67&q={query}",
            selectors={
                'container': 'article.sf-search-ad', 
                'title': 'h2',
                'link': 'a.sf-search-ad-link',
                'price': 'span', # Price is usually the first span in the card info div
            },
            territory="Norway",
            limit_pages=limit_pages
        )

    def _parse_item(self, item_soup):
        title_el = item_soup.select_one('h2')
        if not title_el: return
        title = title_el.text.strip()
        
        link_el = item_soup.select_one('a.sf-search-ad-link')
        listing_url = link_el['href'] if link_el and link_el.has_attr('href') else ""

        price_val = None
        # Price is typically in a div with font-bold
        price_el = item_soup.find('span', string=re.compile(r'kr'))
        if price_el:
            price_val = f"NOK {price_el.text.strip()}"

        from models import BookListing
        item = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=None, # Finn listings usually don't have a separate author field in the list
            price=price_val,
            listing_url=listing_url,
        )
        self.save_item(item)

if __name__ == "__main__":
    spider = FinnNoSpider(limit_pages=1)
    spider.run()
