from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Antikvariat.net Denmark",
    territory="Denmark",
    base_url="https://www.antikvariat.net",
    browse_paths=("/en", "/da", "/search"),
    detail_signals=("/en/book/", "/da/book/", "/book/", "/books/"),
    headers={"Accept-Language": "da-DK,da;q=0.9,en;q=0.8"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Antikvariat.net Denmark spider")
