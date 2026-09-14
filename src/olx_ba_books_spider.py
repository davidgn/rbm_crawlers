"""
Legacy entry point for OLX Bosnia Books.
Delegates execution to OlxBaSpider.
"""

from olx_ba_spider import OlxBaSpider

if __name__ == "__main__":
    spider = OlxBaSpider(limit_pages=1, limit_items=10)
    spider.run()
