"""
Tests for Cyprus spiders:
  - galaxybookshop_cy_spider (WooCommerce API / Galaxy Bookshop Cyprus)
"""
import sys
import os
import unittest

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "src")))

from galaxybookshop_cy_spider import GalaxybookshopCySpider
from woocommerce_spider import WooCommerceAPISpider


class TestCyprusSpiders(unittest.TestCase):
    def test_galaxybookshop_instantiation(self):
        spider = GalaxybookshopCySpider(limit_pages=1)
        self.assertIsInstance(spider, WooCommerceAPISpider)
        self.assertEqual(spider.territory, "Cyprus")
        self.assertEqual(spider.platform_name, "Galaxy Bookshop")
        self.assertIn("galaxybookshop.com.cy", spider.base_url)


if __name__ == "__main__":
    unittest.main()
