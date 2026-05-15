from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="ZVAB Switzerland",
    territory="Switzerland",
    base_url="https://www.zvab.com",
    browse_paths=("/antiquariate/schweiz.shtml", "/servlet/SearchResults?kn=schweiz&pt=book&sts=t"),
    detail_signals=("/servlet/BookDetailsPL", "/buch/", "/book/", "/antiquariate/"),
    exclude_signals=("/help/", "/docs/", "/sell/"),
    headers={"Accept-Language": "de-CH,de;q=0.9,fr-CH;q=0.8,en;q=0.7"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "ZVAB Switzerland antiquarian dealer surface spider")
