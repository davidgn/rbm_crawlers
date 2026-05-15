from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="PBFA Books",
    territory="United Kingdom",
    base_url="https://www.pbfa.org",
    browse_paths=("/books", "/", "/book-search"),
    detail_signals=("/books/", "/book/", "/member-books/"),
    headers={"Accept-Language": "en-GB,en;q=0.9"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "PBFA UK spider")
