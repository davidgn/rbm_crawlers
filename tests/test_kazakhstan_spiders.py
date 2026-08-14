"""
Tests for Kazakhstan spiders:
  - kitapal_kz_spider (HTML Catalog / Kitapal Kazakhstan)
"""
import sys
import os
import unittest
from unittest.mock import MagicMock, patch

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "src")))

from kitapal_kz_spider import KitapalKzSpider
from base_spider import BaseSpider


class TestKitapalKzSpider(unittest.TestCase):
    def test_instantiation(self):
        spider = KitapalKzSpider(limit_pages=1)
        self.assertIsInstance(spider, BaseSpider)

    def test_territory(self):
        spider = KitapalKzSpider()
        self.assertEqual(spider.territory, "Kazakhstan")

    def test_platform_name(self):
        spider = KitapalKzSpider()
        self.assertEqual(spider.platform_name, "Kitapal Kazakhstan")

    def test_html_parsing(self):
        spider = KitapalKzSpider(limit_pages=1)
        spider.CATEGORIES = ["/catalog/47"]
        spider.seen_urls = set()
        emitted = []
        spider.save_item = lambda item: emitted.append(item)

        mock_cat_html = """
        <html>
            <body>
                <a href="/book/test-kazakh-novel-456">Махаббаттың қырық қағидасы</a>
            </body>
        </html>
        """

        mock_book_html = """
        <html>
            <body>
                <div class="crumbs__container">Басты бет • Махаббаттың қырық қағидасы</div>
                <div>Авторы: Элиф Шафак</div>
                <div>ISBN: 9786018103155</div>
                <div>6490 ₸</div>
            </body>
        </html>
        """

        mock_cat_resp = MagicMock()
        mock_cat_resp.status_code = 200
        mock_cat_resp.text = mock_cat_html

        mock_book_resp = MagicMock()
        mock_book_resp.status_code = 200
        mock_book_resp.text = mock_book_html

        def mock_get(url, **kwargs):
            if "test-kazakh-novel" in url:
                return mock_book_resp
            return mock_cat_resp

        with patch.object(spider.session, "get", side_effect=mock_get):
            spider.run()

        self.assertEqual(len(emitted), 1)
        item = emitted[0]
        self.assertEqual(item.title, "Махаббаттың қырық қағидасы")
        self.assertEqual(item.author, "Элиф Шафак")
        self.assertEqual(item.isbn, "9786018103155")
        self.assertEqual(item.price, "6490.0")
        self.assertEqual(item.price_currency, "KZT")
        self.assertEqual(item.territory, "Kazakhstan")
        self.assertIn("kitapal.kz", item.listing_url)


if __name__ == "__main__":
    unittest.main()
