"""
Backward compatibility module for Bosnia OLX Spider.
Aliases OlxBaSpider to BosniaOlxSpider for legacy callers.
"""

from olx_ba_spider import OlxBaSpider

BosniaOlxSpider = OlxBaSpider

if __name__ == "__main__":
    spider = BosniaOlxSpider(limit_pages=1, limit_items=5)
    spider.run()
