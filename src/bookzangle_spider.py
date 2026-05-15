from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Bookzangle",
    territory="United Kingdom",
    base_url="https://bookzangle.com",
    browse_paths=("/", "/books", "/search"),
    detail_signals=("/book/", "/books/", "/product/"),
    headers={"Accept-Language": "en-GB,en;q=0.9"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Bookzangle UK spider")
