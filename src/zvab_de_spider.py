from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="ZVAB Germany",
    territory="Germany",
    base_url="https://www.zvab.com",
    browse_paths=("/servlet/SearchResults?kn=gebrauchte+buecher&pt=book&sts=t", "/antiquariate/"),
    detail_signals=("/servlet/BookDetailsPL", "/buch/", "/book/", "/antiquariate/"),
    exclude_signals=("/help/", "/docs/", "/sell/"),
    headers={"Accept-Language": "de-DE,de;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "ZVAB Germany spider")
