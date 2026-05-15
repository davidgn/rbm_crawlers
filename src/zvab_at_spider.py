from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="ZVAB Austria",
    territory="Austria",
    base_url="https://www.zvab.com",
    browse_paths=("/antiquariate/oesterreich.shtml", "/servlet/SearchResults?kn=oesterreich&pt=book&sts=t"),
    detail_signals=("/servlet/BookDetailsPL", "/buch/", "/book/", "/antiquariate/"),
    exclude_signals=("/help/", "/docs/", "/sell/"),
    headers={"Accept-Language": "de-AT,de;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "ZVAB Austria antiquarian dealer surface spider")
