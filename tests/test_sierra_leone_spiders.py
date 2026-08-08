"""
Tests for Sierra Leone spider:
  - slws_sl_spider (ASP.NET Catalog / Sierra Leone Writers Series)
"""
import sys
import os
import unittest
from unittest.mock import MagicMock, patch

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "src")))

from slws_sl_spider import SlwsSlSpider
from base_spider import BaseSpider


class TestSlwsSlSpider(unittest.TestCase):
    def test_instantiation(self):
        spider = SlwsSlSpider(limit_pages=1)
        self.assertIsInstance(spider, BaseSpider)

    def test_territory(self):
        spider = SlwsSlSpider()
        self.assertEqual(spider.territory, "Sierra Leone")

    def test_platform_name(self):
        spider = SlwsSlSpider()
        self.assertEqual(spider.platform_name, "Sierra Leone Writers Series")

    def test_html_parsing(self):
        spider = SlwsSlSpider(limit_pages=1)
        spider.START_ID = 1048
        spider.END_ID = 1048
        emitted = []
        spider.save_item = lambda item: emitted.append(item)

        mock_html = """
        <html>
            <body>
                <div>
                    <span>Go Back</span>
                    <span>Sailing Against Currents</span>
                    <span>Mohamed Combo Kamanda</span>
                </div>
            </body>
        </html>
        """
        mock_response = MagicMock()
        mock_response.status_code = 200
        mock_response.text = mock_html

        with patch.object(spider.session, "get", return_value=mock_response):
            spider.run()

        self.assertEqual(len(emitted), 1)
        item = emitted[0]
        self.assertEqual(item.title, "Sailing Against Currents")
        self.assertEqual(item.author, "Mohamed Combo Kamanda")
        self.assertEqual(item.price_currency, "SLE")
        self.assertEqual(item.territory, "Sierra Leone")
        self.assertEqual(
            item.listing_url,
            "https://slwritersseries.org/Bookdetail/1048.aspx"
        )


if __name__ == "__main__":
    unittest.main()
