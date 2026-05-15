from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="honto Japan",
    territory="Japan",
    base_url="https://honto.jp",
    browse_paths=("/netstore.html", "/netstore/search.html?k=%E4%B8%AD%E5%8F%A4%E6%9C%AC", "/ebook.html"),
    detail_signals=("/netstore/pd-book_", "/netstore/pd-", "/ebook/pd_"),
    exclude_signals=("/help", "/my", "/reg"),
    headers={"Accept-Language": "ja-JP,ja;q=0.9,en;q=0.7"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "honto Japan books spider")
