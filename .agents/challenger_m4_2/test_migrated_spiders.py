import sys
import os
import unittest
from bs4 import BeautifulSoup

# Add src to sys.path
src_dir = os.path.abspath(os.path.join(os.path.dirname(__file__), "../../src"))
if src_dir not in sys.path:
    sys.path.insert(0, src_dir)

from playwright_search_spider import PlaywrightSearchSpider
from models import BookListing

from alibris_uk_spider import AlibrisUkSpider
from awesomebooks_spider import AwesomebooksSpider
from biblio_uk_spider import BiblioUkSpider
from biblio_es_spider import BiblioEsSpider
from biblio_ie_spider import BiblioIeSpider
from biblio_greece_spider import BiblioGreeceSpider
from bookloop_uk_spider import BookloopUkSpider
from comprovendolibri_spider import ComproVendoLibriSpider
from portaldoslivreiros_spider import PortalDosLivreirosSpider
from recyclivre_spider import RecyclivreSpider
from sellitback_spider import SellitbackSpider
from webuybooks_spider import WeBuyBooksSpider
from zapper_spider import ZapperSpider
from todostuslibros_spider import TodosTusLibrosSpider
from valuebooks_jp_spider import ValueBooksJpSpider
from fnac_p_t_spider import FnacPTSpider

class TestMigratedSpiders(unittest.TestCase):
    def setUp(self):
        self.spiders = [
            (AlibrisUkSpider, "Alibris UK", "GBP", "United Kingdom"),
            (AwesomebooksSpider, "AwesomeBooks", "GBP", "United Kingdom"),
            (BiblioUkSpider, "Biblio UK", "GBP", "United Kingdom"),
            (BiblioEsSpider, "Biblio.es", "EUR", "Spain"),
            (BiblioIeSpider, "Biblio.ie", "EUR", "Ireland"),
            (BiblioGreeceSpider, "Biblio.com Greece", "EUR", "Greece"),
            (BookloopUkSpider, "Bookloop UK", "GBP", "United Kingdom"),
            (ComproVendoLibriSpider, "ComproVendoLibri.it", "EUR", "Italy"),
            (PortalDosLivreirosSpider, "Portal dos Livreiros", "BRL", "Brazil"),
            (RecyclivreSpider, "Recyclivre", "EUR", "France"),
            (SellitbackSpider, "SellitBack", "GBP", "United Kingdom"),
            (WeBuyBooksSpider, "WeBuyBooks", "GBP", "United Kingdom"),
            (ZapperSpider, "Zapper", "GBP", "United Kingdom"),
            (TodosTusLibrosSpider, "TodosTusLibros", "EUR", "Spain"),
            (ValueBooksJpSpider, "ValueBooks Japan", "JPY", "Japan"),
            (FnacPTSpider, "FNAC Portugal Marketplace", "EUR", "Portugal"),
        ]

    def test_inheritance(self):
        """Verify all 16 migrated spiders inherit from PlaywrightSearchSpider."""
        for cls, name, currency, territory in self.spiders:
            with self.subTest(spider=name):
                self.assertTrue(issubclass(cls, PlaywrightSearchSpider), f"{cls.__name__} does not inherit PlaywrightSearchSpider")

    def test_instantiation_and_currency(self):
        """Verify spider instantiation, territory, ISO currency codes, and limits."""
        for cls, expected_name, expected_currency, expected_territory in self.spiders:
            with self.subTest(spider=expected_name):
                spider = cls(limit_pages=3, limit_items=15)
                self.assertEqual(spider.platform_name, expected_name)
                self.assertEqual(spider.price_currency, expected_currency)
                self.assertEqual(spider.territory, expected_territory)
                self.assertEqual(spider.limit_pages, 3)
                self.assertEqual(spider.limit_items, 15)

    def test_selectors_structure(self):
        """Verify spiders configure valid selectors dictionary."""
        for cls, name, _, _ in self.spiders:
            with self.subTest(spider=name):
                spider = cls()
                self.assertIsInstance(spider.selectors, dict)
                self.assertIn('container', spider.selectors)
                self.assertIn('title', spider.selectors)

    def test_dom_parsing_simulation(self):
        """Simulate HTML parsing on mock HTML to verify BookListing generation."""
        mock_html = """
        <div class="product-card">
            <h2 class="title"><a href="/products/12345">Harry Potter and the Philosopher's Stone</a></h2>
            <span class="author">By J.K. Rowling</span>
            <span class="price">£12.99</span>
        </div>
        """
        soup = BeautifulSoup(mock_html, 'html.parser')
        item_soup = soup.select_one('.product-card')

        spider = AwesomebooksSpider()
        saved_items = []
        spider.save_item = lambda item: saved_items.append(item)
        spider._parse_item(item_soup)

        self.assertEqual(len(saved_items), 1)
        listing = saved_items[0]
        self.assertEqual(listing.title, "Harry Potter and the Philosopher's Stone")
        self.assertEqual(listing.price, "12.99")
        self.assertEqual(listing.price_currency, "GBP")
        self.assertEqual(listing.author, "J.K. Rowling")

    def test_comma_price_parsing_defect(self):
        """Demonstrate the empirical defect in PlaywrightSearchSpider with comma decimals."""
        mock_html = """
        <div class="product-card">
            <h2 class="title"><a href="/products/99">Don Quijote</a></h2>
            <span class="price">15,99 €</span>
        </div>
        """
        soup = BeautifulSoup(mock_html, 'html.parser')
        item_soup = soup.select_one('.product-card')

        spider = RecyclivreSpider()
        saved_items = []
        spider.save_item = lambda item: saved_items.append(item)
        spider._parse_item(item_soup)

        self.assertEqual(len(saved_items), 1)
        listing = saved_items[0]
        self.assertEqual(listing.price, "15.99")

    def test_pagination_template_formatting(self):
        """Verify search_path in Alibris, Portal dos Livreiros, and Fnac PT include {page} parameter."""
        target_spiders = [AlibrisUkSpider, PortalDosLivreirosSpider, FnacPTSpider]
        for cls in target_spiders:
            with self.subTest(spider=cls.__name__):
                spider = cls()
                self.assertIn("{page}", spider.search_path, f"{cls.__name__}.search_path missing {{page}} parameter")

if __name__ == "__main__":
    unittest.main()
