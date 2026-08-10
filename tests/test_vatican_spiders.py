"""
Tests for Holy See / Vatican spider:
  - lev_vatican_va_spider (PrestaShop Catalog / Libreria Editrice Vaticana)
"""
import sys
import os
import unittest
from unittest.mock import MagicMock, patch

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "src")))

from lev_vatican_va_spider import LevVaticanVaSpider
from base_spider import BaseSpider


class TestLevVaticanVaSpider(unittest.TestCase):
    def test_instantiation(self):
        spider = LevVaticanVaSpider(limit_pages=1)
        self.assertIsInstance(spider, BaseSpider)

    def test_territory(self):
        spider = LevVaticanVaSpider()
        self.assertEqual(spider.territory, "Holy See")

    def test_platform_name(self):
        spider = LevVaticanVaSpider()
        self.assertEqual(spider.platform_name, "Libreria Editrice Vaticana")

    def test_html_parsing(self):
        spider = LevVaticanVaSpider(limit_pages=1)
        spider.CATEGORIES = ["/en/23-canon-law"]
        emitted = []
        spider.save_item = lambda item: emitted.append(item)

        mock_cat_html = """
        <html>
            <body>
                <a href="/en/home/975-felix-varela.html">FÉLIX VARELA</a>
            </body>
        </html>
        """

        mock_item_html = """
        <html>
            <body>
                <h1>FÉLIX VARELA</h1>
                <span id="our_price_display">18,00 €</span>
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
            if "felix-varela" in url:
                return mock_item_resp
            return mock_cat_resp

        with patch.object(spider.session, "get", side_effect=mock_get):
            spider.run()

        self.assertEqual(len(emitted), 1)
        item = emitted[0]
        self.assertEqual(item.title, "FÉLIX VARELA")
        self.assertEqual(item.price, "18.0")
        self.assertEqual(item.price_currency, "EUR")
        self.assertEqual(item.territory, "Holy See")
        self.assertIn("libreriaeditricevaticana.va", item.listing_url)


if __name__ == "__main__":
    unittest.main()
