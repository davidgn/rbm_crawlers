from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="Ziffit",
    territory="United Kingdom",
    base_url="https://www.ziffit.com",
    browse_paths=("/", "/sell-books", "/books"),
    detail_signals=("/books/", "/book/", "/products/"),
    headers={"Accept-Language": "en-GB,en;q=0.9"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "Ziffit UK spider")
