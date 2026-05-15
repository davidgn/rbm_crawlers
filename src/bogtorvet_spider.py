from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Bogtorvet.net",
    territory="Denmark",
    base_url="https://www.bogtorvet.net",
    browse_paths=("/", "/books", "/search"),
    detail_signals=("/bog/", "/book/", "/books/", "/vare/"),
    headers={"Accept-Language": "da-DK,da;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Bogtorvet Denmark spider")
