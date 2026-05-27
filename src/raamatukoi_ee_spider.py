from html_search_spider import HTMLSearchSpider

class RaamatukoiEeSpider(HTMLSearchSpider):
    """
    Spider for Raamatukoi (Estonia).
    Renowned Estonian antiquarian and new bookstore.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Raamatukoi",
            base_url="https://www.raamatukoi.ee",
            search_path="otsing?q={query}",
            selectors={
                'container': 'a.group', 
                'title': 'h3',
                'link': 'self',
                'price': 'span.whitespace-nowrap',
                'author': 'p.mb-2'
            },
            territory="Estonia",
            limit_pages=limit_pages
        )

    def _parse_item(self, item_soup):
        # item_soup is the a.group anchor
        title_el = item_soup.select_one('h3')
        if not title_el: return
        title = title_el.text.strip()
        
        listing_url = self.base_url + item_soup.get('href', '')
        
        # Author is the p.mb-2 (usually the second one if subtitle exists, but let's be careful)
        author_el = item_soup.find('p', class_='mb-2')
        author = author_el.text.strip() if author_el else None
        
        price_el = item_soup.select_one('span.whitespace-nowrap')
        price_val = price_el.text.strip() if price_el else None

        from models import BookListing
        item = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=author,
            price=price_val,
            listing_url=listing_url,
        )
        self.save_item(item)

if __name__ == "__main__":
    spider = RaamatukoiEeSpider(limit_pages=1)
    spider.run()
