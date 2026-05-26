from html_search_spider import HTMLSearchSpider

class PortalDosLivreirosSpider(HTMLSearchSpider):
    """
    Spider for Portal dos Livreiros (Brazil).
    An aggregator for independent book sellers.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Portal dos Livreiros",
            base_url="https://www.portaldoslivreiros.com.br",
            search_path="busca.asp?palavra={query}",
            selectors={
                'container': 'tr', # Aggregators often use tables
                'title': 'a[href*="livro.asp"]',
                'link': 'a[href*="livro.asp"]',
                'price': 'td:nth-last-child(1)', # Usually the last column
            },
            territory="Brazil",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = PortalDosLivreirosSpider(limit_pages=1)
    spider.run()
