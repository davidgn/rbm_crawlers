"""
Tests for Equatorial Guinea spider:
  - libros_de_guinea_ecuatorial_gq_spider (HTML Catalog / Libros de Guinea Ecuatorial)
"""
import sys
import os
import unittest
from unittest.mock import MagicMock, patch

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "src")))

from libros_de_guinea_ecuatorial_gq_spider import LibrosDeGuineaEcuatorialGqSpider
from base_spider import BaseSpider


class TestLibrosDeGuineaEcuatorialGqSpider(unittest.TestCase):
    def test_instantiation(self):
        spider = LibrosDeGuineaEcuatorialGqSpider(limit_pages=1)
        self.assertIsInstance(spider, BaseSpider)

    def test_territory(self):
        spider = LibrosDeGuineaEcuatorialGqSpider()
        self.assertEqual(spider.territory, "Equatorial Guinea")

    def test_platform_name(self):
        spider = LibrosDeGuineaEcuatorialGqSpider()
        self.assertEqual(spider.platform_name, "Libros de Guinea Ecuatorial")

    def test_html_parsing(self):
        spider = LibrosDeGuineaEcuatorialGqSpider(limit_pages=1)
        emitted = []
        spider.save_item = lambda item: emitted.append(item)

        mock_html = """
        <html>
            <body>
                <h1>Biblioteca de Guinea Ecuatorial</h1>
                <h2>Manual del Exilio Interior</h2>
                <h3>Un País Diferente</h3>
                <h4>Business de África</h4>
            </body>
        </html>
        """
        mock_response = MagicMock()
        mock_response.status_code = 200
        mock_response.text = mock_html

        with patch("requests.get", return_value=mock_response):
            spider.run()

        self.assertTrue(len(emitted) >= 3)
        titles = [item.title for item in emitted]
        self.assertIn("Manual del Exilio Interior", titles)
        self.assertIn("Un País Diferente", titles)
        self.assertIn("Business de África", titles)
        self.assertEqual(emitted[0].territory, "Equatorial Guinea")
        self.assertEqual(emitted[0].price_currency, "XAF")


if __name__ == "__main__":
    unittest.main()
