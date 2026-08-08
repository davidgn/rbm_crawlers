"""
Tests for Republic of the Congo spider:
  - somba_buku_cg_spider (Next.js RSC payload / Somba Buku)
"""
import sys
import os
import unittest
from unittest.mock import MagicMock, patch

sys.path.insert(0, os.path.join(os.path.dirname(__file__), "..", "src"))

from somba_buku_cg_spider import SombaBukuCgSpider
from base_spider import BaseSpider


class TestSombaBukuCgSpider(unittest.TestCase):
    def test_instantiation(self):
        spider = SombaBukuCgSpider(limit_pages=1)
        self.assertIsInstance(spider, BaseSpider)

    def test_territory(self):
        spider = SombaBukuCgSpider()
        self.assertEqual(spider.territory, "Congo")

    def test_platform_name(self):
        spider = SombaBukuCgSpider()
        self.assertEqual(spider.platform_name, "Somba Buku")

    def test_rsc_regex_parsing(self):
        spider = SombaBukuCgSpider()
        emitted = []
        spider.save_item = lambda item: emitted.append(item)

        mock_payload = (
            r'some text \"id\":\"cmjaupi940001l70432guygnf\",'
            r'\"title\":\"Les failles du système éducatif congolais\",'
            r'\"author\":\"Fabien Ngoy Mudjindji\",'
            r'\"price\":5.0, other stuff'
        )
        mock_response = MagicMock()
        mock_response.status_code = 200
        mock_response.text = mock_payload

        with patch("requests.get", return_value=mock_response):
            spider.run()

        self.assertEqual(len(emitted), 1)
        item = emitted[0]
        self.assertEqual(item.title, "Les failles du système éducatif congolais")
        self.assertEqual(item.author, "Fabien Ngoy Mudjindji")
        self.assertEqual(item.price, "5.0")
        self.assertEqual(item.price_currency, "USD")
        self.assertEqual(item.territory, "Congo")
        self.assertEqual(
            item.listing_url,
            "https://www.sombabuku.com/livre/cmjaupi940001l70432guygnf"
        )


if __name__ == "__main__":
    unittest.main()
