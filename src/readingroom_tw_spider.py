from shopify_search_spider import ShopifySearchSpider

class ReadingRoomTwSpider(ShopifySearchSpider):
    """
    Shopify-based spider for Reading Room (Taiwan / 讀書共和國) – a major
    Taiwanese indie book distributor and online bookstore.
    Taiwan: $60.47 / 10 kg M-Bag to the US (Priority Air, 21 days).
    """
    def __init__(self, limit_items: int | None = None, **kwargs):
        super().__init__(
            platform_name="ReadingRoom_TW",
            base_url="https://www.bookrep.com.tw",
            territory="Taiwan",
            price_currency="TWD",
            limit_items=limit_items,
            **kwargs,
        )

if __name__ == "__main__":
    import argparse, logging
    logging.basicConfig(level=logging.INFO)
    parser = argparse.ArgumentParser(description="Reading Room Taiwan Shopify Spider")
    parser.add_argument("--query", type=str, default="book")
    parser.add_argument("--limit-items", type=int, default=5)
    args, _ = parser.parse_known_args()
    ReadingRoomTwSpider(limit_items=args.limit_items).run(search_term=args.query)
