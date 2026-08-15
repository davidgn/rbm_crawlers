"""
Tests for Chad spiders:
  - soukabir_td_spider (WooCommerce Store API / Soukabir Chad)
"""
import sys
import os
import unittest
from unittest.mock import MagicMock, patch

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "src")))

from soukabir_td_spider import SoukabirTdSpider
from base_spider import BaseSpider


class TestSoukabirTdSpider(unittest.TestCase):
    def test_instantiation(self):
        spider = SoukabirTdSpider(limit_pages=1)
        self.assertIsInstance(spider, BaseSpider)

    def test_territory(self):
        spider = SoukabirTdSpider()
        self.assertEqual(spider.territory, "Chad")

    def test_platform_name(self):
        spider = SoukabirTdSpider()
        self.assertEqual(spider.platform_name, "Soukabir Chad")

    def test_api_parsing(self):
        spider = SoukabirTdSpider(limit_pages=1)
        spider.CATEGORY_IDS = [169]
        emitted = []
        spider.save_item = lambda item: emitted.append(item)

        mock_products = [
            {
                "id": 9123,
                "name": "Histoire du Tchad contemporain",
                "permalink": "https://soukabir.com/product/histoire-du-tchad/",
                "prices": {
                    "price": "15000",
                    "currency_code": "XAF",
                    "currency_minor_unit": 0,
                },
                "attributes": [
                    {
                        "name": "Auteur",
                        "terms": [{"name": "Mahamat Ali"}]
                    }
                ]
            }
        ]

        mock_resp = MagicMock()
        mock_resp.status_code = 200
        mock_resp.json.return_value = mock_products

        with patch.object(spider.session, "get", return_value=mock_resp):
            spider.run()

        self.assertEqual(len(emitted), 1)
        item = emitted[0]
        self.assertEqual(item.title, "Histoire du Tchad contemporain")
        self.assertEqual(item.author, "Mahamat Ali")
        self.assertEqual(item.price, "15000.0")
        self.assertEqual(item.price_currency, "XAF")
        self.assertEqual(item.territory, "Chad")
        self.assertEqual(item.listing_url, "https://soukabir.com/product/histoire-du-tchad/")


if __name__ == "__main__":
    unittest.main()
