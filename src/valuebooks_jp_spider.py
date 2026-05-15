from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="ValueBooks Japan",
    territory="Japan",
    base_url="https://www.rakuten.co.jp/vaboo",
    browse_paths=("/",),
    detail_signals=("item.rakuten.co.jp/vaboo/va",),
    exclude_signals=("/help", "/login", "/cart", "/vaboo/c/", "/vaboo/s/"),
    headers={"Accept-Language": "ja-JP,ja;q=0.9,en;q=0.7"},
    allowed_hosts=("item.rakuten.co.jp",),
    curl_impersonate="chrome124",
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "ValueBooks Japan used-books spider")
