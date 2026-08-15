"""
Tests for Niger spiders:
  - ilkitab_ne_spider (HTML Catalog / Ilkitab Librairie Niger)
"""
import sys
import os
import unittest
from unittest.mock import MagicMock, patch

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "src")))

from ilkitab_ne_spider import IlkitabNeSpider
from base_spider import BaseSpider


class TestIlkitabNeSpider(unittest.TestCase):
    def test_instantiation(self):
        spider = IlkitabNeSpider(limit_pages=1)
        self.assertIsInstance(spider, BaseSpider)

    def test_territory(self):
        spider = IlkitabNeSpider()
        self.assertEqual(spider.territory, "Niger")

    def test_platform_name(self):
        spider = IlkitabNeSpider()
        self.assertEqual(spider.platform_name, "Ilkitab Librairie Niger")

    def test_html_parsing(self):
        spider = IlkitabNeSpider(limit_pages=1)
        spider.CATEGORIES = ["/4-litterature-du-niger"]
        emitted = []
        spider.save_item = lambda item: emitted.append(item)

        mock_cat_html = """
        <html>
            <body>
                <a href="https://www.ilkitablibrairie.net/accueil/8-les-femmes-et-la-politique-au-niger.html">Les Femmes et la politique au Niger</a>
            </body>
        </html>
        """

        mock_item_html = """
        <html>
            <body>
                <h1>Les Femmes et la politique au Niger</h1>
                <div>Prix: 11 000 CFA</div>
                <div>ISBN: 9782343156789</div>
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
            if "les-femmes" in url:
                return mock_item_resp
            return mock_cat_resp

        with patch.object(spider.session, "get", side_effect=mock_get):
            spider.run()

        self.assertEqual(len(emitted), 1)
        item = emitted[0]
        self.assertEqual(item.title, "Les Femmes et la politique au Niger")
        self.assertEqual(item.price, "11000.0")
        self.assertEqual(item.price_currency, "XOF")
        self.assertEqual(item.isbn, "9782343156789")
        self.assertEqual(item.territory, "Niger")
        self.assertIn("ilkitablibrairie.net", item.listing_url)


if __name__ == "__main__":
    unittest.main()
