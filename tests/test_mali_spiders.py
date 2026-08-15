"""
Tests for Mali spiders:
  - malibook_ml_spider (HTML Catalog / MaliBook)
"""
import sys
import os
import unittest
from unittest.mock import MagicMock, patch

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "src")))

from malibook_ml_spider import MalibookMlSpider
from base_spider import BaseSpider


class TestMalibookMlSpider(unittest.TestCase):
    def test_instantiation(self):
        spider = MalibookMlSpider(limit_pages=1)
        self.assertIsInstance(spider, BaseSpider)

    def test_territory(self):
        spider = MalibookMlSpider()
        self.assertEqual(spider.territory, "Mali")

    def test_platform_name(self):
        spider = MalibookMlSpider()
        self.assertEqual(spider.platform_name, "MaliBook")

    def test_html_parsing(self):
        spider = MalibookMlSpider(limit_pages=1)
        spider.CATEGORIES = ["/catalogue/categorie/test"]
        emitted = []
        spider.save_item = lambda item: emitted.append(item)

        mock_cat_html = """
        <html>
            <body>
                <a href="/catalogue/la-femme-de-menage-voit-tout">LA FEMME DE MÉNAGE VOIT TOUT</a>
            </body>
        </html>
        """

        mock_item_html = """
        <html>
            <body>
                <h1>LA FEMME DE MÉNAGE VOIT TOUT</h1>
                <p>par FREIDA McFADDEN</p>
                <div>Prix: 10 998 FCFA</div>
                <div>ISBN: 9782824638546</div>
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
            if "la-femme-de-menage" in url:
                return mock_item_resp
            return mock_cat_resp

        with patch.object(spider.session, "get", side_effect=mock_get):
            spider.run()

        self.assertEqual(len(emitted), 1)
        item = emitted[0]
        self.assertEqual(item.title, "LA FEMME DE MÉNAGE VOIT TOUT")
        self.assertEqual(item.author, "FREIDA McFADDEN")
        self.assertEqual(item.price, "10998.0")
        self.assertEqual(item.price_currency, "XOF")
        self.assertEqual(item.isbn, "9782824638546")
        self.assertEqual(item.territory, "Mali")
        self.assertIn("malibook.ml", item.listing_url)


if __name__ == "__main__":
    unittest.main()
