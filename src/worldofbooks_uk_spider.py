from configurable_marketplace_spider import MarketplaceConfig, run_configured_spider


CONFIG = MarketplaceConfig(
    platform_name="World of Books UK",
    territory="United Kingdom",
    base_url="https://www.worldofbooks.com",
    browse_paths=("/en-gb/collections/books", "/en-gb", "/en-gb/search?q=books"),
    detail_signals=("/en-gb/products/", "/products/"),
    headers={"Accept-Language": "en-GB,en;q=0.9"},
)


if __name__ == "__main__":
    run_configured_spider(CONFIG, "World of Books UK spider")
