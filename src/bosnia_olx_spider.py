"""
Backward compatibility module for Bosnia OLX Spider.
Aliases OlxBASpider to BosniaOlxSpider for legacy callers.
"""

from olx_ba_spider import OlxBASpider

BosniaOlxSpider = OlxBASpider

if __name__ == "__main__":
    spider = BosniaOlxSpider(limit_pages=1, limit_items=5)
    spider.run()
