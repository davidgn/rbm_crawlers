"""
Tests for Mongolia spider:
  - internom_mn_spider (Next.js Catalog / Internom)
"""
import sys
import os
import unittest
from unittest.mock import MagicMock, patch

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "src")))

from internom_mn_spider import InternomMnSpider
from base_spider import BaseSpider


class TestInternomMnSpider(unittest.TestCase):
    def test_instantiation(self):
        spider = InternomMnSpider(limit_pages=1)
        self.assertIsInstance(spider, BaseSpider)

    def test_territory(self):
        spider = InternomMnSpider()
        self.assertEqual(spider.territory, "Mongolia")

    def test_platform_name(self):
        spider = InternomMnSpider()
        self.assertEqual(spider.platform_name, "Internom")

    def test_html_parsing(self):
        spider = InternomMnSpider(limit_pages=1)
        emitted = []
        spider.save_item = lambda item: emitted.append(item)

        mock_html = """
        <html>
            <body>
                <script id="__NEXT_DATA__" type="application/json">
                {
                    "props": {
                        "pageProps": {
                            "collections": [
                                {
                                    "name": "Literature",
                                    "childItems": {
                                        "items": [
                                            {
                                                "productId": "81c3184b-830a-4ab4-8f64-4689b6cdc6ab",
                                                "title": "Өвгөдийн үг 1-Үймээний жил",
                                                "author": "Монгол Зохиолч",
                                                "price": 35000,
                                                "slug": "9789919067380-өвгөдийн-үг-1-үймээний-жил"
                                            }
                                        ]
                                    }
                                }
                            ]
                        }
                    }
                }
                </script>
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
        self.assertEqual(item.title, "Өвгөдийн үг 1-Үймээний жил")
        self.assertEqual(item.author, "Монгол Зохиолч")
        self.assertEqual(item.price, "35000")
        self.assertEqual(item.price_currency, "MNT")
        self.assertEqual(item.territory, "Mongolia")
        self.assertIn("internom.mn", item.listing_url)


if __name__ == "__main__":
    unittest.main()
