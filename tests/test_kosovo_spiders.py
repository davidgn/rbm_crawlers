"""
Tests for Kosovo spiders:
  - house_of_books_xk_spider (WooCommerce API / House of Books Kosovo)
  - alterabooks_xk_spider (WooCommerce API / Altera Books Kosovo)
"""
import sys
import os
import unittest

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "src")))

from house_of_books_xk_spider import HouseOfBooksXkSpider
from alterabooks_xk_spider import AlterabooksXkSpider
from woocommerce_spider import WooCommerceAPISpider


class TestHouseOfBooksXkSpider(unittest.TestCase):
    def test_instantiation(self):
        spider = HouseOfBooksXkSpider(limit_pages=1)
        self.assertIsInstance(spider, WooCommerceAPISpider)

    def test_territory(self):
        spider = HouseOfBooksXkSpider()
        self.assertEqual(spider.territory, "Kosovo")

    def test_platform_name(self):
        spider = HouseOfBooksXkSpider()
        self.assertEqual(spider.platform_name, "House of Books Kosovo")

    def test_base_url(self):
        spider = HouseOfBooksXkSpider()
        self.assertIn("houseofbooks-ks.com", spider.base_url)


class TestAlterabooksXkSpider(unittest.TestCase):
    def test_instantiation(self):
        spider = AlterabooksXkSpider(limit_pages=1)
        self.assertIsInstance(spider, WooCommerceAPISpider)

    def test_territory(self):
        spider = AlterabooksXkSpider()
        self.assertEqual(spider.territory, "Kosovo")

    def test_platform_name(self):
        spider = AlterabooksXkSpider()
        self.assertEqual(spider.platform_name, "Altera Books")

    def test_base_url(self):
        spider = AlterabooksXkSpider()
        self.assertIn("alterabooks.com", spider.base_url)


if __name__ == "__main__":
    unittest.main()
