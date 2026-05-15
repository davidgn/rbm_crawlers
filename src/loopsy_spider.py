from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Loopsy.ch",
    territory="Switzerland",
    base_url="https://loopsy.ch",
    browse_paths=("/", "/books", "/search"),
    detail_signals=("/book/", "/books/", "/product/", "/item/"),
    headers={"Accept-Language": "de-CH,de;q=0.9,fr-CH;q=0.8,en;q=0.7"},
    rendered=True,
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Loopsy Switzerland spider")
