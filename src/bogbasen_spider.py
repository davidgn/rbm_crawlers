from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Bogbasen.dk",
    territory="Denmark",
    base_url="https://bogbasen.dk",
    browse_paths=("/", "/search", "/books"),
    detail_signals=("/showBook", "/bog/", "/book/", "/books/"),
    headers={"Accept-Language": "da-DK,da;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Bogbasen Denmark spider")
