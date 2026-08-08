"""
Tests for Angola spider:
  - ninas_livraria_ao_spider (Supabase REST API / Nina's Livraria)
"""
import sys
import os
import unittest
from unittest.mock import MagicMock, patch

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "src")))

from ninas_livraria_ao_spider import NinasLivrariaAoSpider
from base_spider import BaseSpider


class TestNinasLivrariaAoSpider(unittest.TestCase):
    def test_instantiation(self):
        spider = NinasLivrariaAoSpider(limit_pages=1)
        self.assertIsInstance(spider, BaseSpider)

    def test_territory(self):
        spider = NinasLivrariaAoSpider()
        self.assertEqual(spider.territory, "Angola")

    def test_platform_name(self):
        spider = NinasLivrariaAoSpider()
        self.assertEqual(spider.platform_name, "Nina's Livraria")

    def test_api_parsing(self):
        spider = NinasLivrariaAoSpider(limit_pages=1)
        emitted = []
        spider.save_item = lambda item: emitted.append(item)

        mock_homepage = MagicMock()
        mock_homepage.status_code = 200
        mock_homepage.text = '<html><script src="/assets/index-123.js"></script></html>'

        mock_js = MagicMock()
        mock_js.status_code = 200
        mock_js.text = 'const key = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.123";'

        mock_api = MagicMock()
        mock_api.status_code = 200
        mock_api.json.return_value = [
            {
                "id": "7f7ffeaa-6eca-4f5e-b65b-1a01ce818398",
                "title": "As Leis da Natureza Humana",
                "author": "Robert Greene",
                "price": 18000.0,
            }
        ]

        def mock_get(url, **kwargs):
            if "index-123.js" in url:
                return mock_js
            elif "supabase.co" in url:
                return mock_api
            return mock_homepage

        with patch.object(spider.session, "get", side_effect=mock_get):
            spider.run()

        self.assertEqual(len(emitted), 1)
        item = emitted[0]
        self.assertEqual(item.title, "As Leis da Natureza Humana")
        self.assertEqual(item.author, "Robert Greene")
        self.assertEqual(item.price, "18000.0")
        self.assertEqual(item.price_currency, "AOA")
        self.assertEqual(item.territory, "Angola")
        self.assertIn("ninaslivraria.com", item.listing_url)


if __name__ == "__main__":
    unittest.main()
