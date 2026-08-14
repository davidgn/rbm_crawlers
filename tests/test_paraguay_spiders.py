"""
Tests for Paraguay spiders:
  - servilibro_py_spider (WooCommerce API / Servilibro Paraguay)
  - booksparaguay_py_spider (Shopify API / Books Paraguay)
"""
import sys
import os
import unittest

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "src")))

from servilibro_py_spider import ServilibroPySpider
from booksparaguay_py_spider import BooksParaguayPySpider
from woocommerce_spider import WooCommerceAPISpider
from shopify_spider import ShopifyAPISpider


class TestParaguaySpiders(unittest.TestCase):
    def test_servilibro_instantiation(self):
        spider = ServilibroPySpider(limit_pages=1)
        self.assertIsInstance(spider, WooCommerceAPISpider)
        self.assertEqual(spider.territory, "Paraguay")
        self.assertEqual(spider.platform_name, "Servilibro Paraguay")
        self.assertIn("servilibro.com.py", spider.base_url)

    def test_booksparaguay_instantiation(self):
        spider = BooksParaguayPySpider(limit_pages=1)
        self.assertIsInstance(spider, ShopifyAPISpider)
        self.assertEqual(spider.territory, "Paraguay")
        self.assertEqual(spider.platform_name, "Books Paraguay")
        self.assertIn("booksparaguay.com", spider.base_url)


if __name__ == "__main__":
    unittest.main()
