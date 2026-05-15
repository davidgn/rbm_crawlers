from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Surugaya Japan",
    territory="Japan",
    base_url="https://www.suruga-ya.jp",
    browse_paths=("/search?category=7&search_word=%E6%9C%AC", "/search?category=3&search_word=%E6%BC%AB%E7%94%BB"),
    detail_signals=("/product/detail/", "/database/item/"),
    exclude_signals=("/help", "/sell", "/mypage"),
    headers={"Accept-Language": "ja-JP,ja;q=0.9,en;q=0.7"},
    rendered=True,
    render_wait_ms=4000,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Surugaya Japan used-books spider")
