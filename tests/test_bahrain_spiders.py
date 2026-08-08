"""
Tests for Bahrain spider:
  - neo_books_bh_spider (nopCommerce / Neo Books & Coffee)
"""
import sys
import os
import unittest
from unittest.mock import MagicMock, patch

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "src")))

from neo_books_bh_spider import NeoBooksBhSpider
from base_spider import BaseSpider


class TestNeoBooksBhSpider(unittest.TestCase):
    def test_instantiation(self):
        spider = NeoBooksBhSpider(limit_pages=1)
        self.assertIsInstance(spider, BaseSpider)

    def test_territory(self):
        spider = NeoBooksBhSpider()
        self.assertEqual(spider.territory, "Bahrain")

    def test_platform_name(self):
        spider = NeoBooksBhSpider()
        self.assertEqual(spider.platform_name, "Neo Books & Coffee")

    def test_html_parsing(self):
        spider = NeoBooksBhSpider(limit_pages=1)
        emitted = []
        spider.save_item = lambda item: emitted.append(item)

        mock_html = """
        <html>
            <body>
                <div class="product-item">
                    <h2 class="product-title">
                        <a href="/en/pachinko-national-book-award-finalist_9781538784037">Pachinko (National Book Award Finalist)</a>
                    </h2>
                    <div class="prices">
                        <span class="actual-price">14.100 (BHD) incl VAT</span>
                    </div>
                </div>
            </body>
        </html>
        """
        mock_response = MagicMock()
        mock_response.status_code = 200
        mock_response.text = mock_html

        with patch.object(spider.session, "get", return_value=mock_response):
            spider.run()

        self.assertEqual(len(emitted), 1)
        item = emitted[0]
        self.assertEqual(item.title, "Pachinko (National Book Award Finalist)")
        self.assertEqual(item.isbn, "9781538784037")
        self.assertEqual(item.price, "14.100")
        self.assertEqual(item.price_currency, "BHD")
        self.assertEqual(item.territory, "Bahrain")
        self.assertEqual(
            item.listing_url,
            "https://neobooksandcoffee.com/en/pachinko-national-book-award-finalist_9781538784037"
        )


if __name__ == "__main__":
    unittest.main()
