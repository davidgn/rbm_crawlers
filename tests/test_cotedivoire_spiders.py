"""
Tests for Cote d'Ivoire spiders:
  - ldb_ci_spider (HTML Catalog / Librairie de Bingerville)
"""
import sys
import os
import unittest
from unittest.mock import MagicMock, patch

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "src")))

from ldb_ci_spider import LdbCiSpider
from base_spider import BaseSpider


class TestLdbCiSpider(unittest.TestCase):
    def test_instantiation(self):
        spider = LdbCiSpider(limit_pages=1)
        self.assertIsInstance(spider, BaseSpider)

    def test_territory(self):
        spider = LdbCiSpider()
        self.assertEqual(spider.territory, "Cote d'Ivoire")

    def test_platform_name(self):
        spider = LdbCiSpider()
        self.assertEqual(spider.platform_name, "Librairie de Bingerville")

    def test_html_parsing(self):
        spider = LdbCiSpider(limit_pages=1)
        spider.CATEGORIES = ["/livres/"]
        emitted = []
        spider.save_item = lambda item: emitted.append(item)

        mock_cat_html = """
        <html>
            <body>
                <a href="/livre/les-miserables-tome-1/">Les Miserables Tome 1</a>
            </body>
        </html>
        """

        mock_item_html = """
        <html>
            <head>
                <title>Les Miserables Tome 1 - Victor Hugo | Librairie de Bingerville</title>
            </head>
            <body>
                <h1>Les Miserables Tome 1</h1>
                <div>Livraison gratuite dès 25 000 FCFA</div>
                <div>Prix: 9 500 FCFA</div>
                <div>ISBN: 9782253096337</div>
            </body>
        </html>
        """

        mock_cat_resp = MagicMock()
        mock_cat_resp.status_code = 200
        mock_cat_resp.text = mock_cat_html

        mock_item_resp = MagicMock()
        mock_item_resp.status_code = 200
        mock_item_resp.text = mock_item_html

        def mock_get(url, **kwargs):
            if "les-miserables" in url:
                return mock_item_resp
            return mock_cat_resp

        with patch.object(spider.session, "get", side_effect=mock_get):
            spider.run()

        self.assertEqual(len(emitted), 1)
        item = emitted[0]
        self.assertEqual(item.title, "Les Miserables Tome 1")
        self.assertEqual(item.author, "Victor Hugo")
        self.assertEqual(item.price, "9500.0")
        self.assertEqual(item.price_currency, "XOF")
        self.assertEqual(item.isbn, "9782253096337")
        self.assertEqual(item.territory, "Cote d'Ivoire")
        self.assertIn("ldb.ci", item.listing_url)


if __name__ == "__main__":
    unittest.main()
