from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Netoff Japan",
    territory="Japan",
    base_url="https://www.netoff.co.jp",
    browse_paths=("/book/", "/book/P1/"),
    detail_signals=("/detail/", "/book/detail/", "/comic/detail/"),
    exclude_signals=("/guide/", "/sell/", "/user/"),
    headers={"Accept-Language": "ja-JP,ja;q=0.9,en;q=0.7"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Netoff Japan used-books spider")
