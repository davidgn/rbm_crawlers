"""
Legacy entry point for OLX Bosnia Books.
Delegates execution to OlxBASpider.
"""

from olx_ba_spider import OlxBASpider

if __name__ == "__main__":
    spider = OlxBASpider(limit_pages=1, limit_items=10)
    spider.run()
