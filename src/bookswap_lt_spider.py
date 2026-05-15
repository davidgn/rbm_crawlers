from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Bookswap.lt",
    territory="Lithuania",
    base_url="https://bookswap.lt",
    browse_paths=("/", "/books", "/knygos"),
    detail_signals=("/book/", "/books/", "/knyga/", "/item/"),
    headers={"Accept-Language": "lt-LT,lt;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Bookswap.lt Lithuania spider")
