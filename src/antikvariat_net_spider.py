from html_search_spider import HTMLSearchSpider

class AntikvariatNetSpider(HTMLSearchSpider):
    """
    Spider for Antikvariat.net (Norway/Scandinavia).
    Definitive portal for antiquarian books.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Antikvariat.net",
            base_url="https://www.antikvariat.net",
            search_path="en/search/{query}",
            selectors={
                'container': '.item.book', 
                'title': 'h3',
                'link': 'a',
                'price': '.price',
                'author': '.author'
            },
            limit_pages=limit_pages
        )
        self.territory = "Norway"

    def _parse_item(self, item_soup):
        # Specific tailoring for Antikvariat.net structure
        title_el = item_soup.select_one('h3')
        if not title_el: return
        title = title_el.text.strip()
        
        link_el = item_soup.select_one('a')
        listing_url = self.base_url + link_el['href'] if link_el and link_el.has_attr('href') else ""

        price_el = item_soup.select_one('.price')
        price_val = price_el.text.strip() if price_el else None
        
        author_el = item_soup.select_one('.author')
        author = author_el.text.strip() if author_el else None

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
    spider = AntikvariatNetSpider(limit_pages=1)
    spider.run()
