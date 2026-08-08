"""
Tests for Malawi spiders:
  - logos_mw_spider  (WooCommerce / Logos Open Culture)
  - bookhive_mw_spider (Supabase REST / BookHive)
"""
import sys
import os
import unittest
from unittest.mock import MagicMock, patch

sys.path.insert(0, os.path.join(os.path.dirname(__file__), "..", "src"))

from logos_mw_spider import LogosMwSpider
from bookhive_mw_spider import BookHiveMwSpider
from woocommerce_spider import WooCommerceAPISpider
from base_spider import BaseSpider


class TestLogosMwSpider(unittest.TestCase):
    def test_instantiation(self):
        spider = LogosMwSpider(limit_pages=1)
        self.assertIsInstance(spider, WooCommerceAPISpider)

    def test_territory(self):
        spider = LogosMwSpider()
        self.assertEqual(spider.territory, "Malawi")

    def test_base_url(self):
        spider = LogosMwSpider()
        self.assertIn("logosmw.org", spider.base_url)

    def test_platform_name(self):
        spider = LogosMwSpider()
        self.assertEqual(spider.platform_name, "Logos Open Culture")

    def test_limit_pages(self):
        spider = LogosMwSpider(limit_pages=3)
        self.assertEqual(spider.limit_pages, 3)


class TestBookHiveMwSpider(unittest.TestCase):
    def test_instantiation(self):
        spider = BookHiveMwSpider(limit_pages=1)
        self.assertIsInstance(spider, BaseSpider)

    def test_territory(self):
        spider = BookHiveMwSpider()
        self.assertEqual(spider.territory, "Malawi")

    def test_platform_name(self):
        spider = BookHiveMwSpider()
        self.assertEqual(spider.platform_name, "BookHive_MW")

    def test_supabase_url(self):
        spider = BookHiveMwSpider()
        self.assertIn("supabase.co", spider.SUPABASE_URL)

    def test_currency_is_mwk(self):
        """Items should be emitted with MWK currency."""
        spider = BookHiveMwSpider(limit_pages=1)
        emitted = []
        spider.save_item = lambda item: emitted.append(item)

        mock_response = MagicMock()
        mock_response.raise_for_status = MagicMock()
        mock_response.json.return_value = [
            {
                "id": "abc-123",
                "title": "A Grain of Wheat",
                "author": "Ngugi wa Thiong'o",
                "isbn": "9780143029885",
                "price": 1500.0,
                "condition": None,
                "status": "approved",
            }
        ]

        with patch("requests.get", return_value=mock_response):
            spider.run()

        self.assertEqual(len(emitted), 1)
        item = emitted[0]
        self.assertEqual(item.title, "A Grain of Wheat")
        self.assertEqual(item.price_currency, "MWK")
        self.assertEqual(item.price, "1500.0")
        self.assertIn("abc-123", item.listing_url)

    def test_pagination_stops_on_empty_page(self):
        """run() should stop paging when Supabase returns []."""
        spider = BookHiveMwSpider(limit_pages=10)
        emitted = []
        spider.save_item = lambda item: emitted.append(item)

        empty_response = MagicMock()
        empty_response.raise_for_status = MagicMock()
        empty_response.json.return_value = []

        with patch("requests.get", return_value=empty_response):
            spider.run()

        self.assertEqual(len(emitted), 0)

    def test_skips_rows_with_no_title(self):
        """Items with no title should be ignored."""
        spider = BookHiveMwSpider(limit_pages=1)
        emitted = []
        spider.save_item = lambda item: emitted.append(item)

        mock_response = MagicMock()
        mock_response.raise_for_status = MagicMock()
        mock_response.json.return_value = [
            {"id": "x1", "title": None, "author": "Someone", "price": 500.0},
            {"id": "x2", "title": "", "author": "Someone Else", "price": 100.0},
            {"id": "x3", "title": "Good Book", "author": "Author", "price": 200.0},
        ]

        with patch("requests.get", return_value=mock_response):
            spider.run()

        self.assertEqual(len(emitted), 1)
        self.assertEqual(emitted[0].title, "Good Book")

    def test_listing_url_format(self):
        """listing_url should be a bookhivemw.me book detail URL."""
        spider = BookHiveMwSpider(limit_pages=1)
        emitted = []
        spider.save_item = lambda item: emitted.append(item)

        mock_response = MagicMock()
        mock_response.raise_for_status = MagicMock()
        mock_response.json.return_value = [
            {"id": "deadbeef-1234", "title": "Test Book", "author": "Test Author",
             "price": 100.0, "condition": None}
        ]

        with patch("requests.get", return_value=mock_response):
            spider.run()

        self.assertEqual(len(emitted), 1)
        self.assertEqual(
            emitted[0].listing_url,
            "https://bookhivemw.me/book.html?id=deadbeef-1234"
        )


if __name__ == "__main__":
    unittest.main()
